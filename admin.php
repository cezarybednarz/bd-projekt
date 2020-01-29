<HTML>


<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<link rel='stylesheet' type='text/css' href='//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css'>

<head>
<style>
table {
  border-collapse: collapse;
  width: 80%;
}

th, td {
  text-align: left;
  padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}

th {
  background-color: #4267B2;
  color: white;
}
</style>

</head>

<HEAD>
    <TITLE> Sekcja admina </TITLE>
</HEAD>

<BODY>

<center>

<h2> Dodawanie/usuwanie JSONów </h2>

<center><a href="http://students.mimuw.edu.pl/~cb406099/bd-projekt">wróć do strony głównej</a></br>

<center><a href="javascript:history.back()">wróć do poprzedniej strony</a></br>


<?PHP

  session_start(); 
  //$_SESSION['LOGIN'] = $_POST['LOGN'];
  //$_SESSION['PASS'] = $_POST['PASW'];
  $_SESSION['LOGIN'] = 'cb406099';
  $_SESSION['PASS'] = 'xxx';
  
  $conn = oci_connect($_SESSION['LOGIN'] , $_SESSION['PASS']);
  
  if (!$conn) {
    
    echo "oci_connect failed\n";
  	$e = oci_error();
    echo $e['message'];
  }
  
  
  
  echo '<form action="admin.php" method="get"> 
        Adres pliku json do dodania (np. "json_files/Moda.json"):</br>
        <input type="text" name="adres" size="40" length="40" value=""><BR> 
        <input type="submit" name="" value="Zatwierdź"> 
        </form> ';
  
  if(isset($_GET['adres'])) {
    $tweetjson = file_get_contents($_GET['adres']);
    
    if($tweetjson === false) {
      echo "ERROR: Wrong file name";
    }
    
    $data = json_decode($tweetjson);
    
    
    // dodawanie userów
    foreach($data->statuses as $tweet) {
      $usr = $tweet->user;
      
      $sql_cmd = "INSERT INTO usr (id, name, screen_name, location, description, followers, friends, statuses_count) VALUES (:id, :name, :screen_name, :location, :description, :followers, :friends, :statuses_count)";
      
      $stmt = oci_parse($conn, $sql_cmd);
      
      oci_bind_by_name($stmt, ':id', $usr->id);
      oci_bind_by_name($stmt, ':name', $usr->name);
      oci_bind_by_name($stmt, ':screen_name', $usr->screen_name);
      oci_bind_by_name($stmt, ':location', $usr->location);
      oci_bind_by_name($stmt, ':description', $usr->description);
      oci_bind_by_name($stmt, ':followers', $usr->followers_count);
      oci_bind_by_name($stmt, ':friends', $usr->friends_count);
      oci_bind_by_name($stmt, ':statuses_count', $usr->statuses_count);
      
      if(!oci_execute($stmt)) {
        echo "ERROR! user " . $usr->id . " already exists in database, skipping</br>";
        //print_r(oci_error($stmt));
      }
      oci_commit($conn);  
      
      
      // dodawanie Tweetów
      
      $sql_cmd = "INSERT INTO tweet (id, user_id, text, retweeted, favourite_count, retweet_count, reply_count, query) VALUES (:id, :user_id, :text, :retweeted, :favourite_count, :retweet_count, :reply_count, :query)";
      
      $stmt = oci_parse($conn, $sql_cmd);
      
      oci_bind_by_name($stmt, ':id', $tweet->id);
      oci_bind_by_name($stmt, ':user_id', $usr->id);
      oci_bind_by_name($stmt, ':text', $tweet->text);
      if($tweet->retweeted) {    
        oci_bind_by_name($stmt, ':retweeted', 1);
      }
      else {      
        oci_bind_by_name($stmt, ':retweeted', 0);
      }
      oci_bind_by_name($stmt, ':favourite_count', $tweet->favourite_count);
      oci_bind_by_name($stmt, ':retweet_count', $tweet->retweet_count);
      oci_bind_by_name($stmt, ':reply_count', $tweet->reply_count);
      oci_bind_by_name($stmt, ':query', $data->search_metadata->query);
      
      if(!oci_execute($stmt)) {
        echo "ERROR! tweet " . $tweet->id . " already exists in database, skipping</br>";
        print_r(oci_error($stmt));
      }
      oci_commit($conn);  
    }
  }
    
  
  
?>
</table>
</center>

</BODY>
</HTML>


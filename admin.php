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
  
  
  // dodawanie
  
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
      
      oci_execute($stmt);
      
      oci_commit($conn);  
      
      
      // dodawanie Tweetów
      
      $sql_cmd = "INSERT INTO tweet (id, user_id, text, favourite_count, retweet_count, query) VALUES (:id, :user_id, :text, :favourite_count, :retweet_count, :query)";
      
      $stmt = oci_parse($conn, $sql_cmd);
      
      oci_bind_by_name($stmt, ':id', $tweet->id);
      oci_bind_by_name($stmt, ':user_id', $usr->id);
      oci_bind_by_name($stmt, ':text', $tweet->text);
      oci_bind_by_name($stmt, ':favourite_count', $tweet->favorite_count);
      oci_bind_by_name($stmt, ':retweet_count', $tweet->retweet_count);
      oci_bind_by_name($stmt, ':query', $data->search_metadata->query);
      
      if(!oci_execute($stmt)) {
        echo "<r>ERROR! tweet " . $tweet->id . " already exists in database, skipping</r></br>";
        continue; // to jest wazne do hashtagow, urli itp.
      }
      oci_commit($conn); 
      
      
      // dodawanie hashtagow
      
      foreach($tweet->entities->hashtags as $hashtag) {
        $sql_cmd = "INSERT INTO hashtag (tweet_id, hashtag) VALUES (:tweet_id, :hashtag)";
        
        $stmt = oci_parse($conn, $sql_cmd);
        
        oci_bind_by_name($stmt, ':tweet_id', $tweet->id);
        oci_bind_by_name($stmt, ':hashtag', $hashtag->text);
        
        if(!oci_execute($stmt)) {
          print_r(oci_error($stmt));
        }
        
        oci_commit($conn); 
      }
      
      // dodawanie URLi
      
      foreach($tweet->entities->urls as $url) {
        $sql_cmd = "INSERT INTO url (tweet_id, url) VALUES (:tweet_id, :url)";
        
        $stmt = oci_parse($conn, $sql_cmd);
        
        oci_bind_by_name($stmt, ':tweet_id', $tweet->id);
        oci_bind_by_name($stmt, ':url', $url->expanded_url);
        
        if(!oci_execute($stmt)) {
          print_r(oci_error($stmt));
        }
        
        oci_commit($conn); 
      }
      
      // dodawanie mentionow
      
      foreach($tweet->entities->user_mentions as $mention) {
        $sql_cmd = "INSERT INTO mention (tweet_id, user_id) VALUES (:tweet_id, :mention)";
        
        $stmt = oci_parse($conn, $sql_cmd);
        
        oci_bind_by_name($stmt, ':tweet_id', $tweet->id);
        oci_bind_by_name($stmt, ':mention', $mention->id);
        
        if(!oci_execute($stmt)) {
          print_r(oci_error($stmt));
        }
        
        oci_commit($conn); 
      }
    }  
  }
   
   
  // USUWANIE
  
  echo '<form action="admin.php" method="get"> 
        Adres pliku json do usunięcia ("np. "json_files/Warszawa.json"):</br>
        <input type="text" name="delete" size="40" length="40" value=""><BR> 
        <input type="submit" name="" value="Zatwierdź"> 
        </form> ';
  

  if(isset($_GET['delete'])) {
    $tweetjson = file_get_contents($_GET['delete']);
    
    if($tweetjson === false) {
      echo "ERROR: Wrong file name";
    }
    
    $data = json_decode($tweetjson);
    
    
    // dodawanie userów
    foreach($data->statuses as $tweet) {
      
      $sql_cmd = "DELETE FROM hashtag WHERE tweet_id = :my_id";
      $stmt = oci_parse($conn, $sql_cmd);
      oci_bind_by_name($stmt, ':my_id', $tweet->id);
      if(!oci_execute($stmt)) {
        echo "ERROR! tweet " . $tweet->id . " doesn't exist in database, skipping</br>";
        print_r(oci_error($stmt));
      }
      oci_commit($conn);  
      
      $sql_cmd = "DELETE FROM url WHERE tweet_id = :my_id";
      $stmt = oci_parse($conn, $sql_cmd);
      oci_bind_by_name($stmt, ':my_id', $tweet->id);
      if(!oci_execute($stmt)) {
        echo "ERROR! tweet " . $tweet->id . " doesn't exist in database, skipping</br>";
        print_r(oci_error($stmt));
      }
      oci_commit($conn);  
      
      $sql_cmd = "DELETE FROM mention WHERE tweet_id = :my_id";
      $stmt = oci_parse($conn, $sql_cmd);
      oci_bind_by_name($stmt, ':my_id', $tweet->id);
      if(!oci_execute($stmt)) {
        echo "ERROR! tweet " . $tweet->id . " doesn't exist in database, skipping</br>";
        print_r(oci_error($stmt));
      }
      oci_commit($conn);  
      
      $sql_cmd = "DELETE FROM tweet WHERE id = :my_id";
      $stmt = oci_parse($conn, $sql_cmd);
      oci_bind_by_name($stmt, ':my_id', $tweet->id);
      if(!oci_execute($stmt)) {
        echo "ERROR! tweet " . $tweet->id . " doesn't exist in database, skipping</br>";
        print_r(oci_error($stmt));
      }
      oci_commit($conn);  
    }
  }
  
  
  
  echo "<h3> Statystyki: </h3>";
  
  $stmt = oci_parse($conn, "SELECT query, count(query) AS ile FROM tweet GROUP BY query ORDER BY ile DESC");
  oci_execute($stmt, OCI_NO_AUTO_COMMIT);
  echo "<b>tweety z zapytaniami z załadowanych plików: </b></br>";
  while (($row = oci_fetch_array($stmt, OCI_BOTH))) {
    echo "<i>" . $row[0] . "</i> (" . $row[1] . ")</br>";
  }
  
  $stmt = oci_parse($conn, "SELECT COUNT(*) FROM tweet");
  oci_execute($stmt, OCI_NO_AUTO_COMMIT);
  $row = oci_fetch_array($stmt, OCI_BOTH);
  echo "<b>załadowane tweety: </b>" . $row[0] . "</br>";
  
  $stmt = oci_parse($conn, "SELECT COUNT(*) FROM hashtag");
  oci_execute($stmt, OCI_NO_AUTO_COMMIT);
  $row = oci_fetch_array($stmt, OCI_BOTH);
  echo "<b>załadowane hashtagi: </b>" . $row[0] . "</br>";
  
  $stmt = oci_parse($conn, "SELECT COUNT(*) FROM url");
  oci_execute($stmt, OCI_NO_AUTO_COMMIT);
  $row = oci_fetch_array($stmt, OCI_BOTH);
  echo "<b>załadowane URLe: </b>" . $row[0] . "</br>";
  
  $stmt = oci_parse($conn, "SELECT COUNT(*) FROM mention");
  oci_execute($stmt, OCI_NO_AUTO_COMMIT);
  $row = oci_fetch_array($stmt, OCI_BOTH);
  echo "<b>załadowane mentiony (@): </b>" . $row[0] . "</br>";
  
  $stmt = oci_parse($conn, "SELECT COUNT(DISTINCT hashtag) FROM hashtag");
  oci_execute($stmt, OCI_NO_AUTO_COMMIT);
  $row = oci_fetch_array($stmt, OCI_BOTH);
  echo "<b>załadowane unikalne hashtagi: </b>" . $row[0] . "</br>";
  
  $stmt = oci_parse($conn, "SELECT COUNT(DISTINCT url) FROM url");
  oci_execute($stmt, OCI_NO_AUTO_COMMIT);
  $row = oci_fetch_array($stmt, OCI_BOTH);
  echo "<b>załadowane unikalne URLe: </b>" . $row[0] . "</br>";
  
  $stmt = oci_parse($conn, "SELECT COUNT(DISTINCT user_id) FROM mention");
  oci_execute($stmt, OCI_NO_AUTO_COMMIT);
  $row = oci_fetch_array($stmt, OCI_BOTH);
  echo "<b>załadowane unikalne mentiony (@): </b>" . $row[0] . "</br>";
  
  $stmt = oci_parse($conn, "SELECT hashtag, COUNT(hashtag) as ile FROM hashtag GROUP BY hashtag ORDER BY ile DESC");
  oci_execute($stmt, OCI_NO_AUTO_COMMIT);
  $row = oci_fetch_array($stmt, OCI_BOTH);
  echo "<b>najeczęściej wystepujący hashtag: </b><i>#" . $row[0] . "</i> (" . $row[1] . " wystąpienia)</br>";
  
    $stmt = oci_parse($conn, "SELECT url, COUNT(url) as ile FROM url GROUP BY url ORDER BY ile DESC");
  oci_execute($stmt, OCI_NO_AUTO_COMMIT);
  $row = oci_fetch_array($stmt, OCI_BOTH);
  echo "<b>najeczęściej wystepujący URL: </b><i>" . $row[0] . "</i> (" . $row[1] . " wystąpienia)</br>";
  
    $stmt = oci_parse($conn, "SELECT user_id, COUNT(user_id) as ile FROM mention GROUP BY user_id ORDER BY ile DESC");
  oci_execute($stmt, OCI_NO_AUTO_COMMIT);
  $row = oci_fetch_array($stmt, OCI_BOTH);
  echo "<b>najeczęściej wystepujący mention: </b><i>@" . $row[0] . "</i> (" . $row[1] . " wystąpienia)</br>";
  
?>
</table>
</center>

</BODY>
</HTML>


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
      echo "wrong file name";
    }
    
    $data = json_decode($tweetjson, true);
    
    echo count($data['statuses']);
    
    for($i = 0; $i < count($data['statuses']); $i++) {
      echo $data['statuses'][i];
    }
    
    
  }
  
  
  
  
?>
</table>
</center>

</BODY>
</HTML>


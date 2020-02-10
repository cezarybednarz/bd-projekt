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
    <TITLE> Tweet <?PHP echo $_GET['id']; ?> </TITLE>
</HEAD>

<BODY>

<center>

<h2> Tweet <?PHP echo $_GET['id']; ?> </h2>

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
  
  // wypisywanie danych z tweeta:
  
  $stmt = oci_parse($conn, "SELECT * FROM tweet WHERE ID=" . $_GET['id']);
  oci_execute($stmt, OCI_NO_AUTO_COMMIT);
  $row = oci_fetch_array($stmt, OCI_BOTH);
  
  echo "<b>user_id: </b>" . $row['USER_ID'] . "</br>";
  echo "<b>text: </b>" . $row['TEXT'] . "</br>";
  echo "<b>retweeted: </b>" . $row['RETWEETED'] . "</br>";
  echo "<b>favourite_count: </b>" . $row['FAVOURITE_COUNT'] . "</br>";
  echo "<b>retweet_count: </b>" . $row['RETWEET_COUNT'] . "</br>";
  echo "<b>query: </b>" . $row['QUERY'] . "</br>";
  echo "<b>created at: </b>" . $row['CREATED_AT'] . "</br>";
  
  echo "<b>hashtags: </b></br>";
  
  $hash = oci_parse($conn, "SELECT hashtag FROM hashtag WHERE TWEET_ID=" . $_GET['id']);
  oci_execute($hash, OCI_NO_AUTO_COMMIT);
  while (($hash_row = oci_fetch_array($hash, OCI_BOTH))) {
    echo $hash_row['HASHTAG'] . "</br>";
  }
  
  echo "<b>URLs: </b></br>";
  
  $url = oci_parse($conn, "SELECT url FROM url WHERE TWEET_ID=" . $_GET['id']);
  oci_execute($url, OCI_NO_AUTO_COMMIT);
  while (($url_row = oci_fetch_array($url, OCI_BOTH))) {
    echo $url_row['URL'] . "</br>";
  }
  
  echo "<b>Mentions: </b></br>";
  
  $ment = oci_parse($conn, "SELECT user_id FROM mention WHERE TWEET_ID=" . $_GET['id']);
  oci_execute($ment, OCI_NO_AUTO_COMMIT);
  while (($ment_row = oci_fetch_array($ment, OCI_BOTH))) {
    echo $ment_row['USER_ID'] . "</br>";
  }
  
?>


</center>

</BODY>
</HTML>


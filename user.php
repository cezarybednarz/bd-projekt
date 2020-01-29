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
    <TITLE> User <?PHP echo $_GET['id']; ?> </TITLE>
</HEAD>

<BODY>

<center>

<h2> User <?PHP echo $_GET['id']; ?> </h2>

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
  
  echo "<b>id: </b>" . $row['ID'] . "</br>";
  echo "<b>name: </b>" . $row['NAME'] . "</br>";
  echo "<b>screen_name: </b>" . $row['SCREEN_NAME'] . "</br>";
  echo "<b>location: </b>" . $row['LOCATION'] . "</br>";
  echo "<b>description: </b>" . $row['DESCRIPTION'] . "</br>";
  echo "<b>followers: </b>" . $row['FOLLOWERS'] . "</br>";
  echo "<b>friends: </b>" . $row['FRIENDS'] . "</br>";
  echo "<b>statuses_count: </b>" . $row['STATUSES_COUNT'] . "/br";
  
  
?>


</center>

</BODY>
</HTML>


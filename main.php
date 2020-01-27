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
    <TITLE> Tweety </TITLE>
</HEAD>

<BODY>

<center>

<h2> Lista tweetów </h2>


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

?>

<table>
  <tr>
    <th>id</th>
    <th width="20%">user</th>
    <th width="50%">text</th>
    <th>query</th>
    <th>retweeted</th>
    <th>favourites</th>
    <th>retweets</th>
    <th>replies</th>
  </tr>
  <?PHP
    $stmt = oci_parse($conn, "SELECT * FROM test");
    oci_execute($stmt, OCI_NO_AUTO_COMMIT);
    while (($row = oci_fetch_array($stmt, OCI_BOTH))) {
      echo "<tr>";
      echo "<td>" . $row['ID'] . "</td>";
      echo "<td><font color='gray'" . $row['VAL_A'] . "</font></td>";
      echo "<td>" . $row['VAL_B'] . "</td>";
      echo "</tr>";
    }
    // jesli modyfikujemy to
    // oci_commit($conn);
  ?>
</table>
</center>

<center><br><a href="javascript:history.back()">wróć do poprzedniej strony</a>

</BODY>
</HTML>


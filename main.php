<HTML>

<HEAD>
    <TITLE> Tweety </TITLE>
</HEAD>

<BODY>
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

  $stmt = oci_parse($conn, "SELECT * FROM test");

  oci_execute($stmt, OCI_NO_AUTO_COMMIT);
  while (($row = oci_fetch_array($stmt, OCI_BOTH))) {
    echo "xd\n";
    echo "<BR><A HREF=\"doktoranci.php?id=" . $row['ID'] . "\">" . $row['val_a'] . " " . $row['val_b'] . "</A><BR>\n";
  }
  
  // jesli modyfikujemy to
  // oci_commit($conn);
?>

<center><br><a href="javascript:history.back()">wróć do poprzedniej strony</a>

</BODY>
</HTML>


<HTML>

<HEAD>
    <TITLE> Lista tweetów </TITLE>
</HEAD>

<BODY>
<h2> Lista tweetów </h2>

<?PHP
  
  $conn = oci_connect($_SESSION['LOGIN'] , $_SESSION['PASS']);
  
  if (!$conn) {
    
    echo "oci_connect failed\n";
  	$e = oci_error();
    echo $e['message'];
  }

  $stmt = oci_parse($conn, "SELECT * FROM test");

  oci_execute($stmt, OCI_NO_AUTO_COMMIT);
  echo "xd\n";
  while (($row = oci_fetch_array($stmt, OCI_BOTH))) {
      echo "<BR><A HREF=\"doktoranci.php?id=" . $row['ID'] . "\">" . $row['val_a'] . " " . $row['val_b'] . "</A><BR>\n";
  }
  
  // jesli modyfikujemy to
  // oci_commit($conn);

?>
<center><br><a href="javascript:history.back()">wróć do poprzedniej strony</a>

</BODY>
</HTML>

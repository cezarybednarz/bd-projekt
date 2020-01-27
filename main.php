<HTML>

<HEAD>
    <TITLE> Genealogia matematyczna - Naukowcy </TITLE>
</HEAD>

<BODY>
<h2> Naukowcy </h2>

<?PHP // Wchodzimy do PHP

  ////////////////////////////////// 
  // Tworzenie ciasteczka sesyjnego.
  session_start(); 
  // Zapisanie loginu i hasla w ciasteczku sesyjnym.
  // mozna odkomentowac zeby sie logowac na oracla za kazdym razem
  //$_SESSION['LOGIN'] = $_POST['LOGN'];
  //$_SESSION['PASS'] = $_POST['PASW'];
  /////////////////////////////////// 
  
  $_SESSION['LOGIN'] = 'cb406099';
  $_SESSION['PASS'] = 'xxx';
  
  // Nawiazywanie polaczenia z baza danych; login i haslo do studenckiego oracla; serwer bazodanowy jest domyslny. 
  $conn = oci_connect($_SESSION['LOGIN'] , $_SESSION['PASS']);
  
  if (!$conn) {
    
    echo "oci_connect failed\n";
  	$e = oci_error();
    echo $e['message'];
  }

  // Tworzenie wyrazenia SQL-owego
  $stmt = oci_parse($conn, "SELECT * FROM test");

  // Wykonywanie wyrazenia SQL-owego
  oci_execute($stmt, OCI_NO_AUTO_COMMIT);
  echo "xd\n";
  // OCI_BOTH sprawia, tablica jest zarowno asocjacyjna, jak i zwykla
  while (($row = oci_fetch_array($stmt, OCI_BOTH))) {
      echo $_SESSION['LOGIN'];
      echo $_SESSION['PASS'];
// Use uppercase column names for the associative array indices and
      // numbers for the ordinary array indices.
      echo "<BR><A HREF=\"doktoranci.php?id=" . $row['ID'] . "\">" . $row['val_a'] . " " . $row['val_b'] . "</A><BR>\n";
  }
  
  // Jesli modyfikujemy, to trzeba zrobic COMMIT:
  // oci_commit($conn);
?>

</BODY>
</HTML>


<HTML>

<HEAD>

    <TITLE> Analiza Twittera </TITLE>

</HEAD>

<BODY>

<h2> Tweety </h2>

<?PHP // Wchodzimy do PHP

    ///////////////////////////////////
    // Otwieranie ciasteczka sesyjnego.
    session_start();
    ///////////////////////////////////
    
    // Nawiazywanie polaczenia z oraclem.
    $conn = oci_connect($_SESSION['LOGIN'],$_SESSION['PASS']);
    
    if (!$conn) {
	echo "oci_connect failed";
	$e = oci_error();
	echo $e['message'];
    }

    // Tworzenie wyrazenia SQL-owego
    $stmt = oci_parse($conn, "SELECT * FROM fmurlak.naukowiec WHERE promotor = " . $_GET['id']);

    // Wykonywanie wyrazenia SQL-owego
    oci_execute($stmt, OCI_NO_AUTO_COMMIT);

    // OCI_BOTH sprawia, tablica jest zarowno asocjacyjna, jak i zwykla
    while (($row = oci_fetch_array($stmt, OCI_BOTH))) {
	// Use the uppercase column names for the associative array indices
	echo "<BR><A HREF=\"doktoranci.php?id=" . $row['ID'] . "\">" . $row[1] . " " . $row['NAZWISKO'] . "</A><BR>\n";
    }

    // Jesli modyfikujemy, to trzeba zrobic COMMIT:
    // oci_commit($conn);
?>

</BODY>
</HTML>

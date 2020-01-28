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

<h2> Lista użytkowników </h2>


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

<center>
<h4> posortuj: </h4>
  <p>ID
  <a href="user_table.php?direction=asc&column=id">rosnąco </a>/
  <a href="user_table.php?direction=desc&column=id">malejąco </a></p>
  <p>followers
  <a href="user_table.php?direction=asc&column=followers">rosnąco </a>/
  <a href="user_table.php?direction=desc&column=followers">malejąco </a></p>
  <p>friends
  <a href="user_table.php?direction=asc&column=friends">rosnąco </a>/
  <a href="user_table.php?direction=desc&column=friends">malejąco </a></p>
  <p>statuses
  <a href="user_table.php?direction=asc&column=statuses_count">rosnąco </a>/
  <a href="user_table.php?direction=desc&column=statuses_count">malejąco </a></p>

</center>

<table>
  <tr>
    <th>id</th>
    <th>name</th>
    <th>screen_name</th>
    <th>location</th>
    <th>followers</th>
    <th>friends</th>
    <th>statuses</th>
  </tr>
  <?PHP
    $column = "ID";
    if (isset($_GET['column'])) {
      $column = $_GET['column'];
    }
      
    $direction = "ASC";
    if (isset($_GET['direction'])) {
      $direction = $_GET['direction'];
    }
    
    $stmt = oci_parse($conn, "SELECT * FROM usr ORDER BY " . $column . " " . $direction);
    oci_execute($stmt, OCI_NO_AUTO_COMMIT);
    while (($row = oci_fetch_array($stmt, OCI_BOTH))) {
      echo "<tr>";
      echo "<td><a href='user.php/?id=" . $row['ID'] . "'>" . $row['ID'] . "</a></td>";
      echo "<td>" . $row['NAME'] . "</td>";
      echo "<td>" . $row['SCREEN_NAME'] . "</td>";
      echo "<td>" . $row['LOCATION'] . "</td>";
      echo "<td>" . $row['FOLLOWERS'] . "</td>";
      echo "<td>" . $row['FRIENDS'] . "</td>";
      echo "<td>" . $row['STATUSES_COUNT'] . "</td>";
      echo "</tr>";
    }
    //jesli modyfikujemy to
    //oci_commit($conn);
  ?>
</table>
</center>

<center><br><a href="javascript:history.back()">wróć do poprzedniej strony</a>

</BODY>
</HTML>


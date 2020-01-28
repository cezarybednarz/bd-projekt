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

<center><br><a href="index.html">wróć do strony głównej</a>


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
  <a href="tweet_table.php?direction=asc&column=id">rosnąco </a>/
  <a href="tweet_table.php?direction=desc&column=id">malejąco </a></p>
  <p>favourites
  <a href="tweet_table.php?direction=asc&column=favourite_count">rosnąco </a>/
  <a href="tweet_table.php?direction=desc&column=favourite_count">malejąco </a></p>
  <p>retweets
  <a href="tweet_table.php?direction=asc&column=retweet_count">rosnąco </a>/
  <a href="tweet_table.php?direction=desc&column=retweet_count">malejąco </a></p>
  <p>replies
  <a href="tweet_table.php?direction=asc&column=reply_count">rosnąco </a>/
  <a href="tweet_table.php?direction=desc&column=reply_count">malejąco </a></p>

</center>

<table>
  <tr>
    <th>id</th>
    <th width="50%">text</th>
    <th>user_id</th>
    <th>retweeted</th>
    <th>favourites</th>
    <th>retweets</th>
    <th>replies</th>
    <th>query</th>
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
    
    $stmt = oci_parse($conn, "SELECT * FROM tweet ORDER BY " . $column . " " . $direction);
    oci_execute($stmt, OCI_NO_AUTO_COMMIT);
    while (($row = oci_fetch_array($stmt, OCI_BOTH))) {
      echo "<tr>";
      echo "<td><a href='tweet.php/?id=" . $row['ID'] . "'>" . $row['ID'] . "</a></td>";
      echo "<td><small>" . $row['TEXT'] . "</small></td>";
      echo "<td><a href='user.php/?id=" . $row['USER_ID'] . "'>" . $row['USER_ID'] . "</a></td>";
      if ($row['RETWEETED'])
        echo "<td>yes</td>";
      else
        echo "<td>no</td>";
      echo "<td>" . $row['FAVOURITE_COUNT'] . "</td>";
      echo "<td>" . $row['RETWEET_COUNT'] . "</td>";
      echo "<td>" . $row['REPLY_COUNT'] . "</td>";
      echo "<td><i>" . $row['QUERY'] . "</i></td>";
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


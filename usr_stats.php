<!DOCTYPE html>

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
    <TITLE> Wykresy userów</TITLE>
</HEAD>

<BODY>

<center>

<h2> Wykresy userów </h2>


<center><a href="http://students.mimuw.edu.pl/~cb406099/bd-projekt">wróć do strony głównej</a></br>

<center><a href="javascript:history.back()">wróć do poprzedniej strony</a></br>

<body>

<?php 
  
  session_start(); 
  $_SESSION['LOGIN'] = 'cb406099';
  $_SESSION['PASS'] = 'xxx';
  $conn = oci_connect($_SESSION['LOGIN'] , $_SESSION['PASS']);
  if (!$conn) {
    
    echo "oci_connect failed\n";
  	$e = oci_error();
    echo $e['message'];
  }
  
  // pierwszy wykres
  $stmt = oci_parse($conn, "SELECT statuses_count, followers FROM usr");
  oci_execute($stmt, OCI_NO_AUTO_COMMIT);
  $nrows = oci_fetch_all($stmt, $rows);
  
?>



<html>
  <head>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['statuses count', 'followers'],
          <?php
            for($i = 0; $i < $nrows; $i++) {
              echo "[" . $rows[STATUSES_COUNT][$i] . ", " . $rows[FOLLOWERS][$i] . "],";
            }
         ?>	 
        ]);

        var options = {
          title: 'Porównanie statuses vs. followers',
          hAxis: {title: 'Statuses'},
          vAxis: {title: 'Followers'},
          legend: 'none'
        };

        var chart = new google.visualization.ScatterChart(document.getElementById('chart_div'));

        chart.draw(data, options);
      }
    </script>
  </head>
  <body>
    <div id="chart_div" style="width: 900px; height: 500px;"></div>
  </body>
</html>


<?php
  // drugi wykres
  
  echo '<form action="usr_stats.php" method="get"> 
        Ograniczenie followersów:</br>
        <input type="number" name="followers" size="40" length="40" value=""><BR>';
  
  echo '<form action="usr_stats.php" method="get"> 
        Ograniczenie statusów:</br>
        <input type="number" name="statuses" size="40" length="40" value=""><BR> 
        <input type="submit" name="" value="Filter"> 
        </form> ';
  
  
  $followers = $_GET['followers'];
  $statuses = $GET['statuses'];
  
  $stmt = oci_parse($conn, "SELECT statuses_count, followers FROM usr WHERE statuses_count <= :statuses AND followers <= :followers");
  oci_bind_by_name($stmt, ":statuses", $statuses);
  oci_bind_by_name($stmt, ":followers", $followers);
  oci_execute($stmt, OCI_NO_AUTO_COMMIT);
  $s_nrows = oci_fetch_all($stmt, $s_rows);
 
 
?>

<html>
  <head>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart2);

      function drawChart2() {
        var data = google.visualization.arrayToDataTable([
          ['statuses count2', 'followers2'],
          <?php
            for($i = 0; $i < $s_nrows; $i++) {
              echo "[" . $s_rows[STATUSES_COUNT][$i] . ", " . $s_rows[FOLLOWERS][$i] . "],";
            }
         ?>	 
        ]);

        var options = {
          title: 'Porównanie statuses vs. followers',
          hAxis: {title: 'Statuses'},
          vAxis: {title: 'Followers'},
          legend: 'none'
        };

        var chart = new google.visualization.ScatterChart(document.getElementById('chart_div2'));

        chart.draw(data, options);
      }
    </script>
  </head>
  <body>
    <div id="chart_div2" style="width: 900px; height: 500px;"></div>
  </body>
</html>


</body>
</html>


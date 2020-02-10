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
    <TITLE> Wykresy </TITLE>
</HEAD>

<BODY>

<center>

<h2> Wykresy </h2>


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
  
  $stmt = oci_parse($conn, "SELECT from_file, TO_CHAR(created_at, 'HH24') FROM tweet");
  oci_execute($stmt, OCI_NO_AUTO_COMMIT);
  $nrows = oci_fetch_all($stmt, $rows);
  
  foreach($rows as $row) {
    echo $row[0];
  }
  
  /*<?php
                  foreach($rows as $row) {
                    echo "[" . $row[0] . ", " . $row[1] . "],";
                  } 
               ?>*/
?>








<html>
   <head>
      <title>Google Charts Tutorial</title>
      <script type = "text/javascript" src = "https://www.gstatic.com/charts/loader.js">
      </script>
      <script type = "text/javascript">
         google.charts.load('current', {packages: ['corechart']});     
      </script>
   </head>
   
   <body>
      <div id = "container" style = "width: 550px; height: 400px; margin: 0 auto">
      </div>
      <script language = "JavaScript">
         function drawChart() {
            // Define the chart to be drawn.
            var data = google.visualization.arrayToDataTable([
               ['From file', 'Hour'],
               <?php
                  for($i = 0; $i < 10; $i++) {
                    echo "['1', " . $i . "],";
                  }
               ?>	  
            ]);
              
            // Set chart options
            var options = {
               title: 'Students height, in cms',
               legend: { position: 'none' },
               histogram: { bucketSize: 1 }
            };				

            // Instantiate and draw the chart.
            var chart = new google.visualization.Histogram(document.getElementById('container'));
            chart.draw(data, options);
         }
         google.charts.setOnLoadCallback(drawChart);
      </script>
   </body>
</html>

</body>
</html>


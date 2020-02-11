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
  
  $stmt = oci_parse($conn, "SELECT from_file, TO_CHAR(created_at, 'HH24') as TIME FROM tweet");
  oci_execute($stmt, OCI_NO_AUTO_COMMIT);
  $nrows = oci_fetch_all($stmt, $rows);
  
  $stmt = oci_parse($conn, "SELECT favourite_count, retweet_count FROM tweet");
  oci_execute($stmt, OCI_NO_AUTO_COMMIT);
  $n_vs_rows = oci_fetch_all($stmt, $vs_rows);
  echo $n_vs_rows;
?>

<?php
  $stmt = oci_parse($conn, "SELECT DISTINCT from_file FROM tweet");
  echo "<br/><table>";
  echo '<form action="#" method="post">';
  echo "<tr><th width='20%'>Filtruj załadowane pliki</th></tr>";
  oci_execute($stmt, OCI_NO_AUTO_COMMIT);
  while (($stmt_row = oci_fetch_array($stmt, OCI_BOTH))) {
    echo '<tr><td><input type="checkbox" name="check_list[]" value="' . $stmt_row[0] . '"><label>' . $stmt_row[0] . '</label></td></tr>';
  }
  echo "</table>";
?>

<input type="submit" name="submit" value="Filtruj"/>
</form>
<?php
  echo "<br/>";
  $loaded = [];
  echo "<table>";
  echo "<tr><th width='20%'>akutalnie załadowane pliki</th></tr>";
  if(isset($_POST['submit'])){//to run PHP script on submit
    if(!empty($_POST['check_list'])){
    // Loop to store and display values of individual checked checkbox.
      foreach($_POST['check_list'] as $selected) {
        echo "<tr><td><i>" . $selected."</i></td></tr>";
        array_push($loaded, $selected);
      }
    }
  }
  echo "</table>";
  
?>


<html>
   <head>
      <title></title>
      <script type = "text/javascript" src = "https://www.gstatic.com/charts/loader.js">
      </script>
      <script type = "text/javascript">
         google.charts.load('current', {packages: ['corechart']});     
      </script>
   </head>
   
   <body>
      <div id = "container" style = "width: 800px; height: 400px; margin: 0 auto">
      </div>
      <script language = "JavaScript">
         function drawChart() {
            // Define the chart to be drawn.
            var data = google.visualization.arrayToDataTable([
               ['From file', 'Hour'],
               <?php
                  for($i = 0; $i < $nrows; $i++) {
                    if(in_array($rows[FROM_FILE][$i], $loaded)) {
                      echo "['" . $rows[FROM_FILE][$i] . "', " . $rows[TIME][$i] . "],";
                    }
                  }
               ?>	  
            ]);
              
            // Set chart options
            var options = {
               title: 'Godziny postowania tweetów',
               legend: { position: 'none' },
               colors: ['#5C3292'],
               histogram: { minValue: 1 },
               histogram: { maxValue: 24 },
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

<html>
  <head>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['favourites', 'retweets'],
          <?php
            for($i = 0; $i < $n_vs_rows; $i++) {
              if(in_array($vs_rows[FAVOURITE_COUNT][$i], $loaded)) {
                echo "[" . 1 . ", " . 2 . "],";
              }
            }
         ?>	 
        ]);

        var options = {
          title: 'Porównanie favourites vs. retweets',
          hAxis: {title: 'Favourites'},
          vAxis: {title: 'Retweets'},
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


</body>
</html>


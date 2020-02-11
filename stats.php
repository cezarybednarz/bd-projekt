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
    <TITLE> Wykresy tweetów </TITLE>
</HEAD>

<BODY>

<center>

<h2> Wykresy tweetów </h2>


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
  $stmt = oci_parse($conn, "SELECT from_file, TO_CHAR(created_at, 'HH24') as TIME FROM tweet");
  oci_execute($stmt, OCI_NO_AUTO_COMMIT);
  $nrows = oci_fetch_all($stmt, $rows);
  
  // drugi wykres
  $stmt = oci_parse($conn, "SELECT favourite_count, retweet_count, from_file FROM tweet");
  oci_execute($stmt, OCI_NO_AUTO_COMMIT);
  $n_vs_rows = oci_fetch_all($stmt, $vs_rows);
  
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
  if(isset($_POST['submit'])){
    if(!empty($_POST['check_list'])){
      foreach($_POST['check_list'] as $selected) {
        echo "<tr><td><i>" . $selected."</i></td></tr>";
        array_push($loaded, $selected);
      }
    }
  }
  echo "</table>";
  
?>


<?php 
  // trzeci wykres
  $cmd = "SELECT from_file, TO_CHAR(created_at, 'YYYY, MM, DD') as TIME FROM tweet WHERE from_file IN ";
  $loaded_string = "(";
  foreach($loaded as $load) {
    $loaded_string = $loaded_string . "'". $load . "',";
  }
  if(strlen($loaded_string) != 1) {
    $loaded_string[strlen($loaded_string) - 1] = ')';
  } 
  else {
    $loaded_string = $loaded_string . ")";
  }
  
  $stmt = oci_parse($conn, "SELECT TIME, COUNT(TIME) AS NUM FROM (" . $cmd . $loaded_string . ") GROUP BY TIME");
  
  
  oci_execute($stmt, OCI_NO_AUTO_COMMIT);
  $n_date_rows = oci_fetch_all($stmt, $date_rows);
  
  
  // czwarty wykres
  
  $stmt = oci_parse($conn, "SELECT DISTINCT id, from_file FROM tweet WHERE from_file IN" . $loaded_string);
  oci_execute($stmt, OCI_NO_AUTO_COMMIT);
  $hist_nrows = oci_fetch_all($stmt, $hist_rows);
  $hist_tweets = [];
  for($i = 0; $i < $hist_nrows; $i++) {
  
    $curr_id = $hist_rows[ID][$i];
    
    $stmt = oci_parse($conn, "SELECT count(*) FROM hashtag WHERE tweet_id = " . $curr_id);
    oci_execute($stmt, OCI_NO_AUTO_COMMIT);
    $hash_row = oci_fetch_array($stmt, OCI_BOTH);
    
    $stmt = oci_parse($conn, "SELECT count(*) FROM url WHERE tweet_id = " . $curr_id);
    oci_execute($stmt, OCI_NO_AUTO_COMMIT);
    $url_row = oci_fetch_array($stmt, OCI_BOTH);
    
    $stmt = oci_parse($conn, "SELECT count(*) FROM mention WHERE tweet_id = " . $curr_id);
    oci_execute($stmt, OCI_NO_AUTO_COMMIT);
    $mention_row = oci_fetch_array($stmt, OCI_BOTH);
    
    array_push($hist_tweets, [$hash_row[0], $url_row[0], $mention_row[0]]); 
  }
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
              
            var options = {
               title: 'Godziny postowania tweetów',
               legend: { position: 'none' },
               colors: ['#5C3292'],
               histogram: { minValue: 1 },
               histogram: { maxValue: 24 },
               histogram: { bucketSize: 1 }
            };				

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
              if(in_array($vs_rows[FROM_FILE][$i], $loaded)) {
                echo "[" . $vs_rows[FAVOURITE_COUNT][$i] . ", " . $vs_rows[RETWEET_COUNT][$i] . "],";
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


<html>
  <head>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load("current", {packages:["calendar"]});
      google.charts.setOnLoadCallback(drawChart);

   function drawChart() {
       var dataTable = new google.visualization.DataTable();
       dataTable.addColumn({ type: 'date', id: 'Date' });
       dataTable.addColumn({ type: 'number', id: 'Won/Loss' });
       dataTable.addRows([
          <?php
            for($i = 0; $i < $n_date_rows; $i++) {
              // w javascripcie miesiace sa od 0
              $date_rows[TIME][$i][7] = $date_rows[TIME][$i][7] - 1;
              echo "[new Date(" . $date_rows[TIME][$i] . ")," . $date_rows[NUM][$i] . "],";
            }
          ?>
        ]);

       var chart = new google.visualization.Calendar(document.getElementById('calendar_basic'));

       var options = {
         title: "Dni postowania tweetów",
         height: 350,
       };

       chart.draw(dataTable, options);
   }
    </script>
  </head>
  <body>
    <div id="calendar_basic" style="width: 1000px; height: 350px;"></div>
  </body>
</html>


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
      <div id = "container2" style = "width: 800px; height: 400px; margin: 0 auto">
      </div>
      <script language = "JavaScript">
         function drawChart2() {
            var data = google.visualization.arrayToDataTable([
              ['Hashtagi', 'URLe', 'Mentiony'],
              <?php
                foreach($hist_tweets as $tuple) {
                  echo "[" . $tuple[0] . ", " . $tuple[1] . ", " . $tuple[2] . "],";
                }
              ?>
            ]);

            var options = {
              title: 'Charges of subatomic particles',
              legend: { position: 'top', maxLines: 2 },
              colors: ['#5C3292', '#1A8763', '#49C050'],
              histogram: { bucketSize: 1 },
              interpolateNulls: false,
            };				

            var chart = new google.visualization.Histogram(document.getElementById('container2'));
            chart.draw(data, options);
         }
         google.charts.setOnLoadCallback(drawChart2);
      </script>
   </body>
</html>



</body>
</html>


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
               ['Student Roll No', 'height'],
               ['1', 80],['2', 55],['3', 68],['4', 80],['5', 54],
               ['6', 70],['7', 85],['8', 78],['9', 70],['10', 58],
               ['11', 90],['12', 65],['13', 88],['14', 82],['15', 65],
               ['16', 86],['17', 45],['18', 62],['19', 84],['20', 75],
               ['21', 82],['22', 75],['23', 58],['24', 70],['25', 85]		  
            ]);
              
            // Set chart options
            var options = {
               title: 'Godziny postowania tweetów',
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


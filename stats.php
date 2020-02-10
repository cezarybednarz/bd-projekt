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
    <TITLE> Wykrresy </TITLE>
</HEAD>

<BODY>

<center>

<h2> Wykresy </h2>

<center><a href="http://students.mimuw.edu.pl/~cb406099/bd-projekt">wróć do strony głównej</a></br>

<center><a href="javascript:history.back()">wróć do poprzedniej strony</a></br>


<?PHP
  
  
  session_start(); 
  $_SESSION['LOGIN'] = 'cb406099';
  $_SESSION['PASS'] = 'xxx';
  
  $conn = oci_connect($_SESSION['LOGIN'] , $_SESSION['PASS']);
  
  if (!$conn) {
    
    echo "oci_connect failed\n";
  	$e = oci_error();
    echo $e['message'];
  }
  
  
?>  
  
<?php
/*
  require_once "pChart/class/pData.class.php";
  require_once "pChart/class/pDraw.class.php";
  require_once "pChart/class/pImage.class.php";
*/
  
  define("PCHART_PATH", "/public_html/bd-projekt/pChart");
  set_include_path(get_include_path() . PATH_SEPARATOR . PCHART_PATH);
  
  require_once "class/pData.class.php";
  require_once "class/pDraw.class.php";
  require_once "class/pImage.class.php";
  
  $myDataset = array(0, 1, 1, 2, 3, 5, 8, 13);
  
  $myData = new pData(); 
  $myData->addPoints($myDataset);
  
  $myImage = new pImage(500, 300, $myData);
  
  $myImage->setFontProperties(array(
    "FontName" => PCHART_PATH . "/fonts/GeosansLight.ttf",
    "FontSize" => 15));
    
  $myImage->setGraphArea(25,25, 475,275);
  
  
  $myImage->drawScale();
  
  $myImage->drawBarChart();
  
  header("Content-Type: image/png");
  $myImage->Render(null);
  
  echo "XDDD";
  
?>

</table>
</center>

</BODY>
</HTML>


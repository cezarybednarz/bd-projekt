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


<?PHP

  include("/pChart2.1.4/class/pData.class.php");
  include("/pChart2.1.4/class/pDraw.class.php");
  include("/pChart2.1.4/class/pImage.class.php");
  
  
  session_start(); 
  $_SESSION['LOGIN'] = 'cb406099';
  $_SESSION['PASS'] = 'xxx';
  
  $conn = oci_connect($_SESSION['LOGIN'] , $_SESSION['PASS']);
  
  if (!$conn) {
    
    echo "oci_connect failed\n";
  	$e = oci_error();
    echo $e['message'];
  }
  
  
  
  
  // dodawanie


  /* Create and populate the pData object */
  $MyData = new pData();  
  $MyData->addPoints(array(150,220,300,-250,-420,-200,300,200,100),"Server A");
  $MyData->addPoints(array(140,0,340,-300,-320,-300,200,100,50),"Server B");
  $MyData->setAxisName(0,"Hits");
  $MyData->addPoints(array("January","February","March","April","May","Juin","July","August","September"),"Months");
  $MyData->setSerieDescription("Months","Month");
  $MyData->setAbscissa("Months");

  /* Create the pChart object */
  $myPicture = new pImage(700,230,$MyData);

  /* Turn of Antialiasing */
  $myPicture->Antialias = FALSE;

  /* Add a border to the picture */
  $myPicture->drawRectangle(0,0,699,229,array("R"=>0,"G"=>0,"B"=>0));

  /* Set the default font */
  $myPicture->setFontProperties(array("FontName"=>"pChart2.1.4/fonts/pf_arma_five.ttf","FontSize"=>6));

  /* Define the chart area */
  $myPicture->setGraphArea(60,40,650,200);

  /* Draw the scale */
  $scaleSettings = array("GridR"=>200,"GridG"=>200,"GridB"=>200,"DrawSubTicks"=>TRUE,"CycleBackground"=>TRUE);
  $myPicture->drawScale($scaleSettings);

  /* Write the chart legend */
  $myPicture->drawLegend(580,12,array("Style"=>LEGEND_NOBORDER,"Mode"=>LEGEND_HORIZONTAL));

  /* Turn on shadow computing */ 
  $myPicture->setShadow(TRUE,array("X"=>1,"Y"=>1,"R"=>0,"G"=>0,"B"=>0,"Alpha"=>10));

  /* Draw the chart */
  $myPicture->setShadow(TRUE,array("X"=>1,"Y"=>1,"R"=>0,"G"=>0,"B"=>0,"Alpha"=>10));
  $settings = array("Gradient"=>TRUE,"GradientMode"=>GRADIENT_EFFECT_CAN,"DisplayPos"=>LABEL_POS_INSIDE,"DisplayValues"=>TRUE,"DisplayR"=>255,"DisplayG"=>255,"DisplayB"=>255,"DisplayShadow"=>TRUE,"Surrounding"=>10);
  $myPicture->drawBarChart();

  /* Render the picture (choose the best way) */
  $myPicture->autoOutput("pictures/example.drawBarChart.simple.png"); 


  
  
?>
</table>
</center>

</BODY>
</HTML>


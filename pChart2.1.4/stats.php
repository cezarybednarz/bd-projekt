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

  include("class/pData.class.php");
  include("class/pDraw.class.php");
  include("class/pImage.class.php");
  
  
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

  include("class/pData.class.php");
  include("class/pDraw.class.php");
  include("class/pImage.class.php");

  $myData = new pData();
  $myData->addPoints(array(27,48,-48,48,3,9,-31,37),"Serie1");
  $myData->setSerieDescription("Serie1","Serie 1");
  $myData->setSerieOnAxis("Serie1",0);

  $myData->addPoints(array(-41,-47,21,-8,8,-1,9,22),"Serie2");
  $myData->setSerieDescription("Serie2","Serie 2");
  $myData->setSerieOnAxis("Serie2",0);

  $myData->addPoints(array(-25,-3,40,5,46,-35,-10,-46),"Serie3");
  $myData->setSerieDescription("Serie3","Serie 3");
  $myData->setSerieOnAxis("Serie3",0);

  $myData->addPoints(array("January","February","March","April","May","June","July","August"),"Absissa");
  $myData->setAbscissa("Absissa");

  $myData->setAxisPosition(0,AXIS_POSITION_LEFT);
  $myData->setAxisName(0,"1st axis");
  $myData->setAxisUnit(0,"");

  $myPicture = new pImage(700,230,$myData);
  $Settings = array("R"=>170, "G"=>183, "B"=>87, "Dash"=>1, "DashR"=>190, "DashG"=>203, "DashB"=>107);
  $myPicture->drawFilledRectangle(0,0,700,230,$Settings);

  $Settings = array("StartR"=>219, "StartG"=>231, "StartB"=>139, "EndR"=>1, "EndG"=>138, "EndB"=>68, "Alpha"=>50);
  $myPicture->drawGradientArea(0,0,700,230,DIRECTION_VERTICAL,$Settings);

  $myPicture->drawRectangle(0,0,699,229,array("R"=>0,"G"=>0,"B"=>0));

  $myPicture->setShadow(TRUE,array("X"=>1,"Y"=>1,"R"=>50,"G"=>50,"B"=>50,"Alpha"=>20));

  $myPicture->setFontProperties(array("FontName"=>"fonts/Forgotte.ttf","FontSize"=>14));
  $TextSettings = array("Align"=>TEXT_ALIGN_MIDDLEMIDDLE
  , "R"=>255, "G"=>255, "B"=>255);
  $myPicture->drawText(350,25,"My first pChart project",$TextSettings);

  $myPicture->setShadow(FALSE);
  $myPicture->setGraphArea(50,50,675,190);
  $myPicture->setFontProperties(array("R"=>0,"G"=>0,"B"=>0,"FontName"=>"fonts/pf_arma_five.ttf","FontSize"=>6));

  $Settings = array("Pos"=>SCALE_POS_LEFTRIGHT
  , "Mode"=>SCALE_MODE_FLOATING
  , "LabelingMethod"=>LABELING_ALL
  , "GridR"=>255, "GridG"=>255, "GridB"=>255, "GridAlpha"=>50, "TickR"=>0, "TickG"=>0, "TickB"=>0, "TickAlpha"=>50, "LabelRotation"=>0, "CycleBackground"=>1, "DrawXLines"=>1, "DrawSubTicks"=>1, "SubTickR"=>255, "SubTickG"=>0, "SubTickB"=>0, "SubTickAlpha"=>50, "DrawYLines"=>ALL);
  $myPicture->drawScale($Settings);

  $myPicture->setShadow(TRUE,array("X"=>1,"Y"=>1,"R"=>50,"G"=>50,"B"=>50,"Alpha"=>10));

  $Config = "";
  $myPicture->drawSplineChart($Config);

  $Config = array("FontR"=>0, "FontG"=>0, "FontB"=>0, "FontName"=>"fonts/pf_arma_five.ttf", "FontSize"=>6, "Margin"=>6, "Alpha"=>30, "BoxSize"=>5, "Style"=>LEGEND_NOBORDER
  , "Mode"=>LEGEND_HORIZONTAL
  );
  $myPicture->drawLegend(560,16,$Config);

  $myPicture->stroke();
?>
</table>
</center>

</BODY>
</HTML>


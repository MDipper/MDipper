<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no" />
<title></title>

<link rel='stylesheet' id='amexport-css'
	href='https://www.amcharts.com/lib/3/plugins/export/export.css?ver=20160308-01'
	type='text/css' media='all' />
<style type="text/css">
#chart {
	width: 100%;
	height: 600px;
}
</style>
</head>

<body>

	<div id="chart"></div>

	<!-- Javascripts
    ================================================== -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js?ver=1.8.1"></script>
	<!-- Thanks to Zizaco for the Restfulizer script.  http://zizaco.net  -->


	<script
		src="https://www.amcharts.com/lib/3/amcharts.js?ver=20160308-01"></script>
	<script src="https://www.amcharts.com/lib/3/pie.js?ver=20160308-01"></script>
	<script type='text/javascript'
		src='https://www.amcharts.com/lib/3/plugins/export/export.min.js?ver=20160308-01'></script>
	<script type='text/javascript'
		src='https://www.amcharts.com/lib/3/plugins/dataloader/dataloader.min.js?ver=20160308-01'></script>
	<script type='text/javascript'
		src='https://www.amcharts.com/lib/3/plugins/animate/animate.min.js?ver=20160308-01'></script>
	<script src="https://www.amcharts.com/lib/3/themes/light.js"></script>

	<script type="text/javascript">
    function gup(name)
{
    name = name.replace(/[\[]/, "\\\[").replace(/[\]]/, "\\\]");
    var regexS = "[\\?&]" + name + "=([^&#]*)";
    var regex = new RegExp(regexS);
    var results = regex.exec(location.pathname);
    if (results == null)
    {
        return null;
    }
    else
    {
        return results[1];
    }
}

        (function () {
            
            //function kk(data){
                AmCharts.makeChart("chart", {
                "type": "pie",
                "theme": "light",
                //"dataProvider": data,
                "valueField": "count",
                "titleField":  'size',
                "startDuration": 1,
                "innerRadius": 80,
                "pullOutRadius": 20,
                "marginTop": 30,
                "titles": [{
                    "text":  'size'
                }],
                "addClassNames": true,
                "legend": {
                    "position": "right",
                    "autoMargins": true,
                    //"align": "center",
                    "markerType": "circle"
                },
                "outlineAlpha": 0.4,
                "depth3D": 15,
                "angle": 30,
                "dataLoader": {
                    "url": "ajaxsize",
                    "showCurtain": false,
                },
                "responsive": {
                    "enabled": true
                },
                "export": {
                    "enabled": true
                }
            });
            //}
        })();
    </script>
</body>
</html>
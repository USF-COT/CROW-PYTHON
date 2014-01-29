<!doctype html>
<html lang="en" ng-app="crowApp">
<head>
    <meta charset="utf-8">
    <title>${title}</title>
    <link rel="stylesheet" href="${request.static_path('crow:static/app/css/app.css')}">
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no, width=device-width">

    <link rel="icon" type="image/icon" href="${request.static_path('crow:static/favicon.ico')}">
    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="${request.static_path('crow:static/app/css/bootstrap-map-hacks.css')}">
    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.1/css/font-awesome.min.css">

    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/js/bootstrap.min.js"></script>
    
    <script src="//ajax.googleapis.com/ajax/libs/angularjs/1.2.10/angular.js"></script>
    <script src="//ajax.googleapis.com/ajax/libs/angularjs/1.2.10/angular-route.js"></script>
    <script src="//ajax.googleapis.com/ajax/libs/angularjs/1.2.10/angular-resource.js"></script>

    <script src="${request.static_path('crow:static/app/js/app.js')}"></script>
    <script src="${request.static_path('crow:static/app/js/controllers.js')}"></script>
    <script src="${request.static_path('crow:static/app/js/directives.js')}"></script>
    <script src="${request.static_path('crow:static/app/js/filters.js')}"></script>
    <script src="${request.static_path('crow:static/app/js/services.js')}"></script>

    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDAwIkzwBhmjMAQB0MaR5gS9Kjn2lCplXc&sensor=false"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/underscore.js/1.5.2/underscore-min.js"></script>
    <script src="${request.static_path('crow:static/app/js/vendor/angular-google-maps.min.js')}"></script>
</head>
<body>
    <!--[if lt IE 7]>
        <p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>
    <![endif]-->

    ${next.body()}

    <!-- Google Analytics: change UA-XXXXX-X to be your site's ID. -->
    <script>
        var _gaq=[['_setAccount','UA-XXXXX-X'],['_trackPageview']];
        (function(d,t){var g=d.createElement(t),s=d.getElementsByTagName(t)[0];
        g.src='//www.google-analytics.com/ga.js';
        s.parentNode.insertBefore(g,s)}(document,'script'));
    </script>
</body>
</html>

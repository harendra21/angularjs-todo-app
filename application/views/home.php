<!DOCTYPE html>
<html lang="en" ng-app="myApp">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="./public/node_modules/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="./public/assets/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="./public/node_modules/animate.css/animate.min.css">
    <link rel="stylesheet" href="./public/assets/style.css">
    <title>Angular Firbase Crud App</title>
</head>

<body ng-controller="mainCtrl">
    <div ng-view></div>
    <script src="./public/node_modules/angular/angular.min.js"></script>
    <script src="./public/node_modules/angular-route/angular-route.min.js"></script>
    <script>
        var base_url = 'https://serene-plateau-17761.herokuapp.com/';
    </script>
    <script src="./public/src/app.js"></script>
</body>

</html>
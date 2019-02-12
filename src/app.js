var app = angular.module('myApp',['ngRoute']);

app.constant('BASEURL', 
    'http://localhost/projects/ngTodo/apis/'                                                  
);

app.config(function($routeProvider) {
    $routeProvider
    .when("/home", {
      templateUrl : "views/home.html",
      controller : 'HomeCtrl'
    })
    .otherwise({
        redirectTo : '/home'
    });
  });

app.filter('capitalize', function() {
    return function(input) {
      return (!!input) ? input.charAt(0).toUpperCase() + input.substr(1).toLowerCase() : '';
    }
});



app.controller('mainCtrl',function(){

});
app.controller('HomeCtrl',['$scope','BASEURL','$http',function($scope,BASEURL,$http){
    $scope.pageTitle = 'Tasks';
    $scope.tasks = '';
    $scope.addBtn = true;
    
    

    $scope.getTasks = function(){
        
        $http({
            method : "get",
            url : BASEURL+"get-task"
        }).then(function mySuccess(response) {
            $scope.tasks = response.data;
        }, function myError(response) {
            
        });
    };
    
    $scope.addUpdateTask = function(formData) {
        $http({
            method : "POST",
            url : BASEURL+"add-update-task",
            data: formData,
            headers: {'Content-Type': 'application/json'}
        }).then(function mySuccess(response) {
            $scope.getTasks();
          }, function myError(response) {
        });
        $scope.addBtn = true;
        $scope.task = {};
    };

    

    $scope.editTask = function(data){
        $scope.addBtn = false;
        $scope.task = data;
    };

    $scope.reset = function(){
        $scope.addBtn = true;
        $scope.task = {};
    };

    $scope.action = function(formData,action){
        var data = { 'formData' : formData, 'action' : action };
        $http({
            method : "POST",
            url : BASEURL+"action-task",
            data: data,
            headers: {'Content-Type': 'application/json'}
        }).then(function mySuccess(response) {
            $scope.getTasks();
          }, function myError(response) {
        });
        $scope.addBtn = true;
        $scope.task = {};
    };

    


}]);
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Spring MVC AngularJS demo</title>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.8/angular.min.js"></script>
<script>

    var app = angular.module('myApp', []);
    
    function MyController($scope, $http){
        
        $scope.getPersonDataFromServer = function() {           
            $http({method: 'GET', url: 'personlist'}).
            success(function(data, status, headers, config) {
                $scope.persons = data;
            }).
            error(function(data, status, headers, config) {
              // called asynchronously if an error occurs
              // or server returns response with an error status.
            });
        
        };
    };
</script>
</head>
<body>
   hi
   
   <div data-ng-app="myApp">
        <div data-ng-controller="MyController">
            <button data-ng-click="getPersonDataFromServer()">Get Person data from server</button>
             <li ng-repeat="person in persons">
               <p>First Name : {{person.name}}</p>
               <p>country : {{person.country}}</p>                   
             </li>            
        </div>
    </div>
</body>
</html>
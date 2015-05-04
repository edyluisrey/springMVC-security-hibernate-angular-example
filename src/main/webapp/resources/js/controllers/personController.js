angular.module('personController', [])

	// inject the person service factory into our controller
	.controller('mainController', ['$scope','$http','Person', function($scope, $http, Person) {
		$scope.formData = {};
		$scope.loading = true;
		
		Person.getPerson()
			.success(function(data) {
				$scope.persons = data;
				$scope.loading = false;
				$scope.formPerson=false;
			});
		
		$scope.showForm=function(){
			$scope.formPerson=true;
		};
		
		//create
		$scope.createPerson = function() {
			// validate the formData to make sure that something is there
			// if form is empty, nothing will happen
			if ($scope.formData.name != undefined) {
				$scope.loading = true;
				Person.createPerson($scope.formData)
					.success(function(data) {
						$scope.loading = false;
						$scope.formData = {}; // clear the form so our user is ready to enter another
						$scope.persons = data; 
					});
			}
		};
		
		//delete
		$scope.deletePerson = function(id) {
			$scope.loading = true;
			Person.deletePerson(id)
				.success(function(data) {
					$scope.loading = false;
					$scope.formPerson=false;
					//$scope.persons = data; 
				});
		};
		
	}]);
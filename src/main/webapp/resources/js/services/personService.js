angular.module('personService', [])

	.factory('Person', ['$http',function($http) {
		return {
			getPerson : function() {
				return $http.get('/springSecurityMaven/restperson/list');
			},
			createPerson : function(personData) {
				return $http.post('/springSecurityMaven/restperson/create', personData);
			},
			deletePerson: function(id) {
				return $http.delete('/springSecurityMaven/restperson/delete/'+id);
			}
		}
}]);
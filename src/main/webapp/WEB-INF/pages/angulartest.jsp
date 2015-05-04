<!DOCTYPE html>
<html ng-app="MyApp">
<head>
<meta charset="ISO-8859-1">
<title>Spring MVC AngularJS demo</title>

 <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css"><!-- load bootstrap -->
 <link rel="stylesheet" href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css">

<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.15/angular.min.js"></script><!-- load angular -->
	
 <!-- <script src="<%=request.getContextPath()%>/resources/js/lib/angular/underscore-min.js"></script>
 <script src="<%=request.getContextPath()%>/resources/js/lib/angular/angular.min.js"></script>
 <script src="<%=request.getContextPath()%>/resources/js/lib/angular/angular-route.min.js"></script>
 -->
 <script src="<%=request.getContextPath()%>/resources/js/controllers/personController.js"></script>
 <script src="<%=request.getContextPath()%>/resources/js/services/personService.js"></script>
 <script src="<%=request.getContextPath()%>/resources/js/app.js"></script>
 
 
</head>
<!-- SET THE CONTROLLER -->
<body ng-controller="mainController">
	<div class="container">
		<!-- HEADER AND TODO COUNT -->
		<div class="jumbotron text-center">
			<h1>Persons Rest</h1>
		</div>
        
        <table class="table table-striped">
             <thead>
		      <tr>
		        <th>name</th>
		        <th>country</th>
		        <th>Action</th>
		      </tr>
		    </thead>
		    <tbody>
		      <tr ng-repeat="person in persons">
		        <td>{{ person.name }}</td>
		        <td>{{ person.country }}</td>  
		        <td><input class="btn btn-default" type="submit" ng-click="deletePerson(person.id)" value="Delete"></td>
		      </tr>
		    </tbody>   
        </table>
        <p class="text-center" ng-show="loading">
					<span class="fa fa-spinner fa-spin fa-3x"></span>
		</p>
		
		<input class="btn btn-default"  ng-click="showForm()" value="add">
		<br/>
		
		<div id="person-form" class="row"   ng-show="formPerson">
			<div class="col-sm-8 col-sm-offset-2 text-center">
				<form>
					<div class="form-group">
						<input type="text" class="form-control input-lg text-center" placeholder="name" ng-model="formData.name">
						<input type="text" class="form-control input-lg text-center" placeholder="country" ng-model="formData.country">
					</div>
					<button type="submit" class="btn btn-primary btn-lg" ng-click="createPerson()">Add</button>
				</form>
			</div>
		</div>

	</div>
</body>
</html>

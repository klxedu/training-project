angular.module("Module.example",[]).factory('exampleService',function($http){
	var service = {};
	service.findList = function(params){
		return $http.get('../trainingUser/findList.json');
	}
	service.addOrUpdate = function(data){
		return $http({
			method : "post",
			url : '../trainingUser/saveOrUpdate.json',
			data : $.param(data),
			headers:{'Content-Type': 'application/x-www-form-urlencoded'}
		});
	}
	service.findById = function(id){
		//findById
		return $http.get('../trainingUser/findById.json?id='+id);
	}
	return service;
});
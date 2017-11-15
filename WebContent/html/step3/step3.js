
angular.module('Module.step3',[]).factory('trainingUserService',function($http){//定义工厂类，使用$http服务
	var service = {};
	service.findList = function(params){
		return $http.get('../../trainingUser/findList.json');
	}
	service.addOrUpdate = function(data){
		return $http({
			method : "post",
			url : '../../trainingUser/saveOrUpdate.json',
			data : $.param(data),
			headers:{'Content-Type': 'application/x-www-form-urlencoded'}
		});
	}
	service.findById = function(id){
		//findById
		return $http.get('../../trainingUser/findById.json?id='+id);
	}
	return service;
}).controller('step3Ctrl',function($scope,trainingUserService){//定义controller，引用上方定义的工厂
	
	//列表查询
	$scope.findList = function(){
		trainingUserService.findList().success(function(data){
			$scope.list = data.data.resultList;//为列表对象赋值
		});
	}
	//新增 修改
	$scope.addOrUpdate = function(){
		trainingUserService.addOrUpdate($scope.step3).success(function(data){
			$scope.findList();
		});
	}
	//查询
	$scope.findById = function(id){
		trainingUserService.findById(id).success(function(data){
			$scope.step3 = data.data;
		})
	}
	
	$scope.modelShow = function(){
		$("#formModel").modal("show");
	}
	//初始化
	$scope.findList();
});
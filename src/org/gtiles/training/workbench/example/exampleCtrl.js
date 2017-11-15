angular.module("Module.example").controller('exampleCtrl',function($scope,exampleService){
	//列表查询
	$scope.findList = function(){
		exampleService.findList().success(function(data){
			$scope.list = data.data.resultList;//为列表对象赋值
		});
	}
	//新增 修改
	$scope.addOrUpdate = function(){
		exampleService.addOrUpdate($scope.step3).success(function(data){
			$scope.findList();
		});
	}
	//查询
	$scope.findById = function(id){
		exampleService.findById(id).success(function(data){
			$scope.step3 = data.data;
		})
	}
	
	//列表查询执行
	$scope.findList();
});
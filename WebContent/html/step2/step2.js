/**
 * 1、angularjs模块定义方式：angular.module('Module.step2',[])
 * 2、获取定义的angular模块：angular.module('Module.step2')
 * 3、定义模块的controller：angular.module('Module.step2').controller('step2Ctrl',function($scope){});
 * @param $scope
 * @returns
 */
angular.module('Module.step2',[]).controller('step2Ctrl',function($scope){
	$scope.list = [{
		'trainingUserId':'1',
		'name':'宋慧青',
		'dept':'快来学',
		'mobilePhone':'13011111111',
		'email':'songhuiqing@goldgov.com',
		'createTime':new Date()
	},{
		'trainingUserId':'2',
		'name':'李孟克',
		'dept':'企业应用',
		'mobilePhone':'13011111112',
		'email':'limengke@goldgov.com',
		'createTime':new Date()
	},{
		'trainingUserId':'3',
		'name':'刘海刚',
		'dept':'培训部',
		'mobilePhone':'13011111113',
		'email':'liuhaigang@goldgov.com',
		'createTime':new Date()
	}];
});
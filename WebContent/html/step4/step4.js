/**
 * 路由配置
 */
angular.module('Module.step4',['ngRoute']).config(['$routeProvider', function($routeProvider){//angularjs的基本路由
    $routeProvider.when('/list',{
    	templateUrl:'../../html/step4/list.html',
    	controller : 'listCtrl'
    }).when('/form',{
    	templateUrl:'../../html/step4/form.html',
    	controller : 'formCtrl'
    }).otherwise({redirectTo:'/'});
}]);

angular.module('Module.step4').controller('formCtrl',function($scope){
	$scope.trainingUser = {
			'trainingUserId':'1',
			'name':'宋慧青',
			'dept':'快来学',
			'mobilePhone':'13011111111',
			'email':'songhuiqing@goldgov.com',
			'createTime':new Date()
		};
});
angular.module('Module.step4').controller('listCtrl',function($scope){
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
})
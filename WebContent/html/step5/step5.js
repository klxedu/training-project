angular.module('Module.step5',['ngRoute']).config(['$routeProvider', function($routeProvider){
    $routeProvider.when('/userDirective',{
    	template:'<div training-list></div>'
    }).when('/userFilter',{
    	template:'<h2>实际值：{{filterValue}}</h2><span>过滤器过滤：{{filterValue | strCut:10}}</span>'
    }).otherwise({redirectTo:'/'});
}]);
angular.module('Module.step5').controller('step5Ctrl',function($scope){
	$scope.filterValue = "字符串过滤，大于10字省略。哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈";
})
/**
 * 指令定义
 */
.directive('trainingList',function(){
	return {
		restrict : "EA",
		scope:true,
		controller:function($scope){
			$scope.list = [{
				'trainingUserId':'1',
				'name':'宋慧青',
				'dept':'快来学'
			},{
				'trainingUserId':'2',
				'name':'李孟克',
				'dept':'企业应用'
			},{
				'trainingUserId':'3',
				'name':'刘海刚',
				'dept':'培训部'
			}];
		},
		link:function($scope,attrs,elements){
			
		},
		template:function(){
			return "<table class='table'><tr><th>名称</th><th>单位</th></tr>" +
					"<tr ng-repeat='x in list'><td>{{x.name}}</td><td>{{x.dept}}</td></tr>"+
					"</table>";
		}
	};
})
/**
 * 过滤器定义
 */
.filter("strCut",function(){
	return function(text,num){
		if(text&&text.length>num){
			return text.substring(0,num)+'...';
		}
		return text;
	}
})
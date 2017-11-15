<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html ng-app="adminconsole">
<head>
<meta charset="UTF-8">
<title>管理控制台界面</title>
<link rel="stylesheet"
	href="../skin/bootstrap/css/bootstrap-3.3.5.min.css" />
<link rel="stylesheet" href="../skin/backconsole/css/gtiles.css" />
<link rel="stylesheet" href="../skin/backconsole/css/loading-bar.css" />
<link rel="stylesheet" href="../skin/backconsole/css/angular-growl.min.css" />
<link rel="stylesheet" href="../skin/backconsole/css/fonts/iconfont.css" />
<link rel="stylesheet" href="../adminconsole/treegrid/treeGrid.css"/>

<style>
	.pagination li{
		float:left;
	}
	.ng-invalid {
    border-color: red;
    outline-color: red;
    }
	.ng-valid {
      border-color: green;
      outline-color: green;
     }
    .messages {
	  font-size: smaller;
	  padding-top: 5px;
	  padding-bottom: 10px;
	  color: red;
    }

</style>
</head>
<body>
 <div ng-controller="navctrl">
   <nav class="navbar navbar-inverse navbar-fixed-top" >
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand nav_top" href="#">Gtiles framework</a>
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
			</div>
			<div id="navbar" class="navbar-collapse collapse">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#" data-toggle="modal" data-target="#changepassword">修改密码</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<div class="modal fade" id="changepassword" tabindex="-1" role="dialog" aria-labelledby="changepassword">
			  <div class="modal-dialog modal-sm" role="document">
			    <div class="modal-content">
			      <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			        <h4 class="modal-title" id="exampleModalLabel">修改密码</h4>
			      </div>
			      <div class="modal-body">
			        <form name="passwordForm" novalidate >
			          <div class="form-group">
			            <label for="recipient-name" class="control-label">密码：</label>
			            <input type="password" class="form-control" id="newpassword" ng-model="newpassword" required >
			          </div>
			          <div class="form-group">
			            <label for="message-text" class="control-label">确认密码:</label>
			            <input type="password" class="form-control" id="newpasswordconfirm" ng-model="newpasswordconfirm"  required 
			              compare-to="newpassword" />
			          </div>
			        </form>
			      </div>
			      <div class="modal-footer">
			        <button type="button" class="btn btn-primary" ng-click="dochangepassword()" ng-show="passwordForm.$valid" >确定</button>
			        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
			        
			      </div>
			    </div>
			  </div>
		</div>
	</div> 
	<div class="container-fluid" ng-controller="acctrl">
		<div class="row">
			<div class="col-sm-12 col-md-12">
				<!--左侧导航-->
				<div class="col-sm-3 col-md-2 sidebar">
					<ul class="nav nav-sidebar">
						<li><a href="#adminconsole/componentsmng">组件管理<span class="sr-only"></span></a></li>
						<li><a href="./doc/admin" target="_blank">平台说明</a></li>								
						<c:forEach items="${modelnamelist}" var="mal">
						   ${mal} 
						   <c:forEach items="${meunmap[mal]}" var="list">
								<li  ng-class="getMenuClass('${list.url}')"><a href="${list.url}" ng-click="menuSel('${list.url}')" >${list.name} <span class="sr-only"></span></a></li>
							</c:forEach>
						</c:forEach>
					</ul>
				</div>
				<!--注入页面-->
				<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2"
					ng-view></div>
			</div>
		</div>
	</div>
	 <div growl></div>
	<script src="../common/jquery/jquery-1.11.3.min.js"></script>
	<script src="../common/bootstrap/bootstrap-3.3.5.min.js"></script>
	<script src="../common/angularjs/angular-1.5.0.min.js"></script>
	<!-- angular的路由模块 -->
	<script src="../common/angularjs/angular-route-1.5.0.min.js"></script>
	<!-- angular的表单验证模块 -->
	<script src="../common/angularjs/angular-messages.min.js"></script>
	<script src="../common/angularjs/angular-resource.min.js"></script>
	<script src="../common/angularjs/ng-tasty-tpls.js"></script>
	<script src="../common/bootstrap/ui-bootstrap-tpls-1.1.2.min.js"></script>
	<script src="../common/angularjs/angular-confirm-1.2.5.min.js"></script>
	<script src="../common/angularjs/loading-bar-0.9.min.js"></script>
	<script src="../common/angularjs/angular-growl.min.js"></script>
	<script src="../adminconsole/treegrid/tree-grid-directive.js"></script>
	<script src="../adminconsole/fileupload/ng-file-upload-shim.min.js"></script>
	<script src="../adminconsole/fileupload/ng-file-upload.min.js"></script>
	<script src="../adminconsole/commng.js"></script>
	${ctrljs}
	<script>
		angular
				.module(
						'adminconsole',
						[ 'Module.commng','angular-loading-bar','angular-growl','angular-confirm', 'ui.bootstrap.tpls'${moudlelist} ])
				.factory(
						'authchecker',
						function($q, $location) {
							return {
								'request' : function(config) {

									return config;
								},
								'response' : function(response) {
									// $location.path('/adminconsole/userlogin');

									return response;
								},
								'responseError' : function(response) {
									if (response.status == 401
											|| response.status === 403) {
										$location
												.path('/adminconsole/userlogin');
									}
									return $q.reject(response);
								}
							};
						})
				.config(
						['$routeProvider',
						  "$httpProvider",
								function($routeProvider, $httpProvider) {
									$routeProvider
											.when(
													'/adminconsole/userlogin',
													{
														templateUrl : '../adminconsole/userlogin.html',
														controller : 'loginctrl'
													});
									$routeProvider
											.otherwise('/adminconsole/commmng');
									//$httpProvider.interceptors.push('authchecker');
								}

						])
				.config(['growlProvider', '$httpProvider', function(growlProvider, $httpProvider) {
                          $httpProvider.interceptors.push(growlProvider.serverMessagesInterceptor);
                          growlProvider.messagesKey("message");
                          growlProvider.messageTextKey("message-content");
                          growlProvider.messageTitleKey("message-title");
                          growlProvider.messageSeverityKey("message-level");
                }])
				.constant("menuBarActiveClass", "active")
				.controller(
						'acctrl',
						function($scope, menuBarActiveClass) {
							var menuSelected = null;
							$scope.menuSel = function(ms) {
								menuSelected = ms;
							}
							$scope.getMenuClass = function(ms) {
								var res = menuSelected == ms ? menuBarActiveClass : ""
								return res;
							}
							$scope.selection=[];
						    $scope.toggleSelection = function toggleSelection(id) {
						    	var idx = $scope.selection.indexOf(id);
						        // is currently selected,unchecked
						        if (idx > -1) {
						          $scope.selection.splice(idx, 1);
						        }
						        // is newly selected checked
						        else {
						          $scope.selection.push(id);
						        }
						     };
							$scope.reloadCallback = function() {
							};
							$scope.initTastyTheme = {
								init : {
									'count' : 15,
									'page' : 1,
									'thead' : true,
									'pagination' : true,
									'filterBase' : false
								},
								query : {
									'page' : 'currentPage',
									'count' : 'pageSize',
									'sortBy' : 'sortBy',
									'sortOrder' : 'sortOrder'
								},
								bootstrapIcon : true,
								listItemsPerPage : [ 2, 15, 25, 50, 100 ],
								itemsPerPage : 15,
								loadOnInit : true,
								templateUrl : '../common/angularjs/gtiles_paginatione.html'
							}
						}).controller('loginctrl', function($scope) {
					       $scope.msg = "hello world";
				         }).controller('navctrl',function($scope,$http){
				        	 $scope.dochangepassword = function(){
				        		 var changeurl = './changeadminpassword.json';
				        		 $http({
				        				method:"post",
				        				url:changeurl,
				        				data:$scope.newpassword
				        			}).success(function(data){
				        				$("#changepassword").modal('hide');
				        				$scope.newpassword='';
				        				$scope.newpasswordconfirm='';
				        			})
						      }
				         }).directive('compareTo', function() {
				        	    return {
				        	        require: "ngModel",
				        	        scope: {
				        	          otherModelValue: "=compareTo"
				        	        },
				        	        link: function(scope, element, attributes, ngModel) {

				        	          ngModel.$validators.compareTo = function(modelValue) {
				        	            return modelValue == scope.otherModelValue;
				        	          };
				        	          scope.$watch("otherModelValue", function() {
				        	            ngModel.$validate();
				        	          });
				        	        }
				        	      };
				        });
	</script>


</body>
</html>
angular.module('Module.commng', ['ngRoute','treeGrid','ngFileUpload'])
.config([
    '$routeProvider',
    function ($routeProvider) {
        $routeProvider.when('/adminconsole/commmng', {
            templateUrl: '../adminconsole/commng.html',
            controller: 'CommngController'
        });
    }
])
.constant("componentlisturl","../adminconsole/componentslist.json")
.controller('CommngController',function ($scope,$http,Upload,componentlisturl) {
	
		$scope.gtiles = {
				"product":{},
				"error":""
		};
		//tree
		var tree;
		$scope.tree_data = [];
		// 点击展开列
		$scope.expand_to = {
			"field" : "name",
			"displayName" : "模块名称",
			"sortable" : false,
			"cellTemplate":"<span>{{row.branch['name']}}&nbsp;&nbsp;" +
					"<span title=\"PC端\" ng-if=\"row.branch['authType']!=null && row.branch['authType'].indexOf('pc')!=-1\" class='icon iconfont icon-pc'>&nbsp;</span>" +
					"<span title=\"手机端\" ng-if=\"row.branch['authType']!=null && row.branch['authType'].indexOf('app')!=-1\" class='icon iconfont icon-app'>&nbsp;</span>" +
					"<span title=\"微信端\" ng-if=\"row.branch['authType']!=null && row.branch['authType'].indexOf('wx')!=-1\" class='icon iconfont icon-wx'>&nbsp;</span>" +
					"</span>"
		};
		// 树数据
	//	$scope.tree_data = myTreeData;
		$scope.my_tree = tree = {};
		$scope.my_tree.isModuleAuth = function(authType,icon){
			console.log("------------------");
			console.log(authType+","+icon);
			if(authType.indexOf(icon)!=-1){
				return true;
			}
			return false;
		}
		$scope.my_tree.sortColumn = {
			"sortDirection" : "asc",
			"sortingType" : "number",
			"field" : "sort"
		};
		// 自定义列表列
		$scope.col_defs = [{
			field : "code",
			displayName : "模块编号"
		},{
			field : "state",
			displayName : "状态",
			cellTemplate : "<span ng-class=\"row.branch['state']=='UNAUTHORIZED'?'text-danger':'text-success'\">{{row.branch['state']=='UNAUTHORIZED'?'未授权':'运行中'}}</span>"
		},{
			field : "versionNum",
			displayName : "当前版本"
		},{
			field : "installDate",
			displayName : "安装时间",
			cellTemplate : "<span>{{row.branch['state']=='UNAUTHORIZED'?'--':row.branch['installDate'] | date:'yyyy-MM-dd HH:mm:ss'}}</span>"
		} ];
		
		$scope.getModuleList = function(){
			$http.get(componentlisturl).success(function (data) {
				$scope.tree_data = data.data;
		    }).error(function (error) {
		        $scope.gtiles.error = error;
		    });
		}
		$scope.getModuleList();
		
		$scope.currentCheckItem = {};
		
		$scope.onBranchOperation=function(branch,operatType,callback){
			$scope.currentCheckItem.name = branch.name;
			if(operatType == "changelog"){
				$scope.showChangeLog(branch.id);
			}else if(operatType == 'showconfig'){
				$scope.showConfigList(branch.id);
			}
			
		}
		//显示配置
		$scope.showConfigList = function(compontentId){
			
			$http.get("../adminconsole/componentconfig.json?id="+compontentId).success(function(data){
				$scope.currentCheckItem.configList = data.data;
				$("#compontentConfig").modal("show");
			});
		};
		
		//变更记录
		$scope.showChangeLog = function(compontentId){
			$http.get("../adminconsole/componentchangelog.json?id="+compontentId).success(function(data){
				$scope.currentCheckItem.changeLog = data.data;
				$("#versionChangeLog").modal("show");
			});
		}
		//更新授权
		$scope.updatelic = function(){
			$("#updatelic").modal("show");
		}
		//保存配置
		$scope.saveConfig = function(){
			var separator = "#@#";
			var submitData = {};
			angular.forEach($scope.currentCheckItem.configList, function(data,index,array){
				//CONFIG_ITEM#@#org.gtiles.components.securityworkbench.login#@#plugins_swblogin_filterUrl
				var itemName = "CONFIG_ITEM"+separator+data.groupCode+separator+data.code;
				var itemValue = data.value;
				submitData[itemName] = itemValue;
			});
			 $http({
				method : "post",
				url : "../adminconsole/module/save.json",
				headers:{'Content-Type': 'application/x-www-form-urlencoded'},
				data : $.param(submitData)
			}).success(function(data){
				$("#compontentConfig").modal("hide");
			});
		};
		
		//上传lic
		$scope.uploadLic = function (dataUrl) {
	        Upload.upload({
	            url: '../adminconsole/uploadlic.json',
	            file: $scope.file,
	    }).progress(function (evt) {
			//进度条
			$scope.progressPercentage = parseInt(100.0 * evt.loaded / evt.total);
			$scope.barstyle = {width: $scope.progressPercentage+"%"}
		}).then(function (response) {
//			$scope.getModuleList
			if(response.data.success){
				$scope.getModuleList();
				$scope.file = {};
				$("#updatelic").modal("hide");
			}else{
				$scope.licError = response.data.msg;
			}
	    });
	  };
		
    }
)
;
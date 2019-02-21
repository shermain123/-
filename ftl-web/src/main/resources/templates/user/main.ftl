<html>
<#include "/common/common.ftl"/>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>测试</title>
</head>

<body class="kit-theme" onresize="iframeResize()">
    <div class="layui-layout layui-layout-admin kit-layout-admin">
        <div class="layui-header">
            
            <ul class="layui-nav layui-layout-right kit-nav">
                <li class="layui-nav-item"><a href="javascript:;">  </a></li>
                <li class="layui-nav-item"><a href="javascript:;" onclick="logout();"><i class="fa fa-sign-out" aria-hidden="true"></i> 注销</a></li>
            </ul>
        </div>

        <div class="layui-side layui-bg-black kit-side">
            <div class="layui-side-scroll">
                <div class="kit-side-fold"><i class="fa fa-navicon" aria-hidden="true"></i></div>
                <ul class="layui-nav layui-nav-tree" lay-filter="kitNavbar" id="kitNavbar" kit-navbar>   
                    <li class="layui-nav-item layui-nav-itemed">
                        <a class="" href="javascript:;"><i class="fa fa-user" ></i><span>&nbsp;&nbsp;列表</span></a>
                        <dl class="layui-nav-child">
							<dd class="layui-this">
								<a href="javascript:void(0);" data-url="../product/productList" data-title="树节点" data-id="1">
									<span>树节点</span>
								</a>
							</dd>
							<dd>
								<a href="javascript:void(0);" data-url="../cust/customer" data-title="数据列表" data-id="2">
									<span>数据列表</span>
								</a>
							</dd>
							<dd>
								<a href="javascript:void(0);" data-url="../grap/graphical" data-title="ECharts" data-id="3">
									<span>ECharts</span>
								</a>
							</dd>
							<dd>
								<a href="javascript:void(0);" data-url="../flow/flLoding" data-title="流加载" data-id="4">
									<span>流加载</span>
								</a>
							</dd>
                        </dl>
                    </li>
                    <li class="layui-nav-item layui-nav-itemed">
                    	<a class="" href="javascript:;"><i class="fa fa-user" ></i><span>&nbsp;&nbsp;列表</span></a>
                    	<dl class="layui-nav-child">
                    		<dd>
                    			<a href="javascript:void(0);" data-url="../upload/uploadImg" data-title="图片上传" data-id="1">
									<span>图片上传</span>
								</a>
                    		</dd>
                    		<dd>
                    			<a href="javascript:void(0);" data-url="../tree/resAllList" data-title="treegrid" data-id="2">
                    				<span>treegrid</span>
                    			</a>
                    		</dd>
                    		<dd>
                    			<a href="javascript:void(0);" data-url="../item/itemList" data-title="item" data-id="3">
                    				<span>Item</span>
                    			</a>
                    		</dd>
                    	</dl>
                    </li>
                </ul>
            </div>
        </div>
        <div class="layui-body" id="container">
            <!-- 内容主体区域 -->
            <div style="padding: 15px;">主体内容加载中,请稍等...</div>
        </div>

        <div class="layui-footer">
            <!-- 底部固定区域 -->
            <div align="center">2018 &copy; 国泰君安</div>
        </div>
    </div>
    <input id="iframeH" type="hidden" value="">
    <input id="iframeW" type="hidden" value="">
   
    <script>
    var ctx;
    var message;
    
    var frameHeight = 0;
    
    var frameWidth = 0;
	var id;
	var url;
	var text;
	$(document).ready(function(){
		ctx = '${ctx}';
		frameHeight = $("#container").height() - 42;
		
		 <#--
			id = '';
			url = '${ctx }/';
		    text = '<span> </span>';
		 -->
	     
	});
        
        
        layui.config({
            base: '/layui/build/js/'
        }).use(['app', 'message', 'navbar'], function() {
            var app = layui.app, $ = layui.jquery, layer = layui.layer, element = layui.element;
            //将message设置为全局以便子页面调用
            message = layui.message;
            //主入口
           app.set({
                type: 'iframe'
            }).init();
           	
            iframeResize();
            
            element.on('nav(kitNavbar)', function(elem){
                
               	var id = elem.children('a').attr("data-id");
                element.tabDelete("kitTab",  elem.children('a').attr("data-id"));
                
                var url = elem.children('a').attr('data-url');
                if (url.indexOf("?") >= 0) {
					url = url + "&";
				} else {
					url = url + "?";
				}
                
                element.tabAdd('kitTab', {
                	title: '<span>' + elem.children('a').html() + '</span>',
                	content: '<iframe height="' + frameHeight + '" src="' + url + 'tabId=' + id + '" frameborder="0"></iframe>',
                	id: id
                });
                element.tabChange('kitTab', id);
             });
             
        });
        
        function iframeResize(){
        	frameHeight = $("#container").height() - 42;
          	$("#iframeH").val(frameHeight);
        	frameWidth = $("#container").width();
          	$("#iframeW").val(frameWidth);
        }
        
       	function logout(){
           	layer.confirm('是否退出系统？', {icon: 3, title:'提示'}, function(index){
           		$.get("${ctx}/user/logout", function(){
					window.location.href = '${ctx}/user/login';
           		});
           	});
		}	 
       	
    </script>
</body>
</html>

<!--[if lt IE 10]><!-->
    <script src="${ctx}/js/jquery/jquery-1.8.3.min.js"></script>
<!--<![endif]-->

<!--[if gte IE 10]><!-->
    <script src="${ctx}/js/jquery/jquery-2.0.3.min.js"></script>
<!--[endif]-->

<!--[if !IE]><!--> 
	<script src="${ctx}/js/jquery/jquery-2.0.3.min.js"></script>
<!--<![endif]-->

<script src="${ctx}/js/jquery/jquery.cookie.js"></script>

<script src="${ctx}/js/common/common.js"></script>

<script src="${ctx }/layui/plugins/layui/layui.js"></script>

<script>
	$(document).ready(function(){
		$.ajaxSetup({cache:false});
	});
</script>

<!-- CSS -->
<link href="${ctx}/css/style.css" type=text/css rel=stylesheet>

<!-- layui -->
<link rel="stylesheet" href="${ctx }/layui/plugins/layui/css/layui.css" media="all">
<link rel="stylesheet" href="${ctx }/layui/build/css/themes/lightBlue.css" media="all">
<link rel="stylesheet" href="${ctx }/layui/plugins/font-awesome/css/font-awesome.min.css" media="all">
<link rel="stylesheet" href="${ctx }/layui/build/css/app.css" media="all">
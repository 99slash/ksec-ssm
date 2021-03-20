<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2017/1/10
  Time: 14:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta charset="utf-8"/>
    <title>Dashboard</title>

    <meta name="description" content="overview &amp; stats"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0"/>

    <!-- bootstrap & fontawesome -->
    <link rel="stylesheet" href="/ace/assets/css/bootstrap.css"/>
    <link rel="stylesheet" href="/ace/components/font-awesome/css/font-awesome.css"/>

    <!-- page specific plugin styles -->
    <link rel="stylesheet" href="/ace/bootstrapValidator/dist/css/bootstrapValidator.css"/>
    <!-- text fonts -->
    <link rel="stylesheet" href="/ace/assets/css/ace-fonts.css"/>

    <!-- ace styles -->
    <link rel="stylesheet" href="/ace/assets/css/ace.css" class="ace-main-stylesheet" id="main-ace-style"/>

    <!--[if lte IE 9]>
    <link rel="stylesheet" href="/ace/assets/css/ace-part2.css" class="ace-main-stylesheet"/>
    <![endif]-->
    <link rel="stylesheet" href="/ace/assets/css/ace-skins.css"/>
    <link rel="stylesheet" href="/ace/assets/css/ace-rtl.css"/>

    <!--[if lte IE 9]>
    <link rel="stylesheet" href="/ace/assets/css/ace-ie.css"/>
    <![endif]-->

    <!-- inline styles related to this page -->
    <link rel="stylesheet" href="/ace/webuploader-0.1.5/webuploader.css"/>
    <link rel="stylesheet" href="/ace/webuploader-0.1.5/image-upload/style.css"/>
    <!-- ace settings handler -->
    <script src="/ace/assets/js/ace-extra.js"></script>

    <!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->

    <!--[if lte IE 8]>
    <script src="/ace/components/html5shiv/dist/html5shiv.min.js"></script>
    <script src="/ace/components/respond/dest/respond.min.js"></script>
    <![endif]-->
</head>

<body class="no-skin">
<!-- #section:basics/navbar.layout -->
<!-- /section:basics/navbar.layout -->
<div class="main-container ace-save-state" id="main-container">
    <script type="text/javascript">
        try {
            ace.settings.loadState('main-container')
        } catch (e) {
        }
    </script>

    <!-- #section:basics/sidebar -->
    <div id="sidebar" class="sidebar                  responsive                    ace-save-state">
        <script type="text/javascript">
            try {
                ace.settings.loadState('sidebar')
            } catch (e) {
            }
        </script>

        <ul class="nav nav-list">
            <li class="">
                <a href="/user/list">
                    <i class="menu-icon fa fa-tachometer"></i>
                    <span class="menu-text"> 列表 </span>
                </a>
                <b class="arrow"></b>
            </li>
        </ul><!-- /.nav-list -->

        <!-- #section:basics/sidebar.layout.minimize -->
        <div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
            <i id="sidebar-toggle-icon" class="ace-icon fa fa-angle-double-left ace-save-state"
               data-icon1="ace-icon fa fa-angle-double-left" data-icon2="ace-icon fa fa-angle-double-right"></i>
        </div>

        <!-- /section:basics/sidebar.layout.minimize -->
    </div>

    <!-- /section:basics/sidebar -->
    <div class="main-content">
        <div class="main-content-inner">

            <div class="page-content">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <form class="form-horizontal" role="form" id="myform" action="/user/save" enctype="multipart/form-data" method="post">
                            <div class="form-group">
                                <label for="name" class="col-sm-1 control-label">姓名</label>
                                <div class="col-sm-11">
                                    <input type="text" class="form-control" id="name" name="name">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="studentId" class="col-sm-1 control-label">学号</label>
                                <div class="col-sm-11">
                                    <input type="text" class="form-control" id="studentId" name="studentId">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="sex" class="col-sm-1 control-label">性别</label>
                                <div class="col-sm-11">
                                    <input type="text" class="form-control" id="sex" name="sex">
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-sm-offset-4 col-sm-8">
                                    <button type="submit" class="btn btn-info" id="validateBtn">
                                        <i class="ace-icon fa fa-check bigger-110"></i> 提交
                                    </button>
                                    &nbsp; &nbsp; &nbsp;
                                    <button type="button" class="btn btn-info" id="back">
                                        <i class="ace-icon fa fa-check bigger-110"></i> 返回
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div><!-- /.page-content -->
        </div>
    </div><!-- /.main-content -->
    <a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
        <i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
    </a>
</div><!-- /.main-container -->

<!-- basic scripts -->

<!--[if !IE]> -->
<script src="/ace/components/jquery/dist/jquery.js"></script>

<!-- <![endif]-->

<!--[if IE]>
<script src="/ace/components/jquery.1x/dist/jquery.js"></script>
<![endif]-->
<script type="text/javascript">
    if ('ontouchstart' in document.documentElement) document.write("<script src='/ace/components/_mod/jquery.mobile.custom/jquery.mobile.custom.js'>" + "<" + "/script>");
</script>
<script src="/ace/components/bootstrap/dist/js/bootstrap.js"></script>

<!-- page specific plugin scripts -->
<script src="/ace/bootstrapValidator/dist/js/bootstrapValidator.js"></script>
<script src="/ace/bootstrapValidator/dist/js/language/zh_CN.js"></script>
<!--[if lte IE 8]>
<script src="/ace/components/ExplorerCanvas/excanvas.js"></script>
<![endif]-->
<script src="/ace/components/_mod/jquery-ui.custom/jquery-ui.custom.js"></script>
<script src="/ace/components/jqueryui-touch-punch/jquery.ui.touch-punch.js"></script>
<script src="/ace/components/_mod/easypiechart/jquery.easypiechart.js"></script>
<script src="/ace/components/jquery.sparkline/index.js"></script>
<script src="/ace/components/Flot/jquery.flot.js"></script>
<script src="/ace/components/Flot/jquery.flot.pie.js"></script>
<script src="/ace/components/Flot/jquery.flot.resize.js"></script>

<!-- ace scripts -->
<script src="/ace/assets/js/src/elements.scroller.js"></script>
<script src="/ace/assets/js/src/elements.colorpicker.js"></script>
<script src="/ace/assets/js/src/elements.fileinput.js"></script>
<script src="/ace/assets/js/src/elements.typeahead.js"></script>
<script src="/ace/assets/js/src/elements.wysiwyg.js"></script>
<script src="/ace/assets/js/src/elements.spinner.js"></script>
<script src="/ace/assets/js/src/elements.treeview.js"></script>
<script src="/ace/assets/js/src/elements.wizard.js"></script>
<script src="/ace/assets/js/src/elements.aside.js"></script>
<script src="/ace/assets/js/src/ace.js"></script>
<script src="/ace/assets/js/src/ace.basics.js"></script>
<script src="/ace/assets/js/src/ace.scrolltop.js"></script>
<script src="/ace/assets/js/src/ace.ajax-content.js"></script>
<script src="/ace/assets/js/src/ace.touch-drag.js"></script>
<script src="/ace/assets/js/src/ace.sidebar.js"></script>
<script src="/ace/assets/js/src/ace.sidebar-scroll-1.js"></script>
<script src="/ace/assets/js/src/ace.submenu-hover.js"></script>
<script src="/ace/assets/js/src/ace.widget-box.js"></script>
<script src="/ace/assets/js/src/ace.settings.js"></script>
<script src="/ace/assets/js/src/ace.settings-rtl.js"></script>
<script src="/ace/assets/js/src/ace.settings-skin.js"></script>
<script src="/ace/assets/js/src/ace.widget-on-reload.js"></script>
<script src="/ace/assets/js/src/ace.searchbox-autocomplete.js"></script>

<!-- inline scripts related to this page -->
<script src="/ace/webuploader-0.1.5/image-upload/upload.js"></script>
<script src="/ace/webuploader-0.1.5/webuploader.js"></script>

<!-- the following scripts are used in demo only for onpage help and you don't need them -->
<link rel="stylesheet" href="/ace/assets/css/ace.onpage-help.css"/>


<script type="text/javascript"> ace.vars['base'] = '/ace'; </script>
<script src="/ace/assets/js/src/elements.onpage-help.js"></script>
<script src="/ace/assets/js/src/ace.onpage-help.js"></script>
<script type="text/javascript">
    $(function () {

    });

    $("#exit").click(function () {
        layer.confirm('确定退出', {icon: 3, title: '提示'}, function () {
            window.location.href = "/brand/exit"
        });
    });
    $("#back").click(function () {
        window.location.href = "/brand/list";
    });
</script>
</body>
</html>


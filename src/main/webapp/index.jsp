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
    <link rel="stylesheet" href="/ace/bootstrap-table/bootstrap-table.css"/>
    <link rel="stylesheet" href="/ace/layer/skin/layer.css"/>

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
    <link rel="stylesheet" href="/ace/bootstrap-table/bootstrap-table.css"/>
    <!-- ace settings handler -->
    <script src="/ace/assets/js/ace-extra.js"></script>

    <!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->

    <!--[if lte IE 8]>
    <script src="/ace/components/html5shiv/dist/html5shiv.min.js"></script>
    <script src="/ace/components/respond/dest/respond.min.js"></script>
    <![endif]-->
</head>

<body class="no-skin">
<div class="main-container ace-save-state" id="main-container">
    <script type="text/javascript">
        try {
            ace.settings.loadState('main-container')
        } catch (e) {
        }
    </script>

    <!-- #section:basics/sidebar -->
    <div id="sidebar" class="sidebar responsive ace-save-state">
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
            <!-- #section:basics/content.breadcrumbs -->
            <div class="breadcrumbs ace-save-state" id="breadcrumbs">
                <ul class="breadcrumb">
                    <li>
                        <i class="ace-icon fa fa-home home-icon"></i>
                        <a href="#">学生信息</a>
                    </li>
                    <li class="active">List</li>
                </ul><!-- /.breadcrumb -->
            </div>

            <!-- /section:basics/content.breadcrumbs -->
            <div class="page-content">
                <div id="div-advanced-search">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <form class="form-group">
                                <label for="name" class="col-sm-1 control-label">姓名</label>
                                <div class="col-sm-3">
                                    <input type="text" class="input-sm form-control" id="name"/>
                                </div>
                                <label for="studentId" class="col-sm-1 control-label">学号</label>
                                <div class="col-sm-3">
                                    <input type="text" class="input-sm form-control" id="studentId"/>
                                </div>

                                <div class="col-sm-4">
                                    <div class="btn-group">
                                        <button class="btn btn-purple btn-sm" type="button" id="search">
                                            <span class="ace-icon fa fa-search icon-on-right "></span>
                                            查询
                                        </button>
                                        <button class="btn btn-info btn-sm" type="reset" id="clearopt">
                                            <span class="ace-icon fa fa-trash-o  orange"></span>
                                            清空
                                        </button>
                                    </div>

                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <div id="toolbar" class="btn-group">
                    <button type="button" class="btn btn-primary btn-sm" id="add">
                        <i class="ace-icon fa fa-floppy-o"></i>新增
                    </button>
                    <button id="remove" class="btn btn-danger btn-sm" disabled>
                        <i class="glyphicon glyphicon-remove"></i>删除
                    </button>
                    <button type="button" class="btn btn-primary btn-sm" id="edit">
                        <i class="ace-icon fa fa-floppy-o"></i>修改
                    </button>
                </div>

                <table id="table" data-page-list="[10,15,20]" data-toolbar="#toolbar">
                </table>
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
<script src="/ace/bootstrap-table/bootstrap-table.js"></script>
<script src="/ace/bootstrap-table/bootstrap-table-zh-CN.js"></script>
<script src="/ace/layer/layer.js"></script>
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
<script src="/ace/bootstrap-table/bootstrap-table.js"></script>
<script src="/ace/bootstrap-table/bootstrap-table-zh-CN.js"></script>
<script type="text/javascript">
    var $table = $('#table');
    var $remove = $('#remove');
    var selects=[];
    $table.on('check.bs.table uncheck.bs.table ' +
        'check-all.bs.table uncheck-all.bs.table', function () {
        $remove.prop('disabled', !$table.bootstrapTable('getSelections').length);
        // save your data, here just save the current page
        selects = getIdSelections();
        // push or splice the selections if you want to save all data selections
    });
    function getIdSelections() {
        return $.map($table.bootstrapTable('getSelections'), function (row) {
            return row.id
        });
    }


    $(function () {
        initTable();
    });

    function initTable() {
        $table.bootstrapTable({
            url: '/user/listMp',
            columns: [{
                field: 'state',
                checkbox: true
            }, {
                field: 'id',
                align: 'center',
                title: 'ID'
            }, {
                field: 'name',
                align: 'center',
                title: '姓名'
            }, {
                field: 'studentId',
                align: 'center',
                title: '学号'
            }, {
                field: 'sex',
                align: 'center',
                title: '性别'
            }, {
                field: 'courseName',
                align: 'center',
                title: '语文'
            }, {
                field: 'courseName',
                align: 'center',
                title: '数学'

            }, {
                field: 'courseName',
                align: 'center',
                title: '英语'

            }],
            pagination: true,
            pageSize: 10,
            dataType: "json",
            search: false,
            queryParams: queryParams,
            sidePagination: "server"
        })
    }

    function queryParams(params) {
        var temp = {
            limit: params.limit,
            offset: params.offset,
            name: $("#name").val(),
            studentId: $("#studentId").val()
        }
        return temp;
    }

    $("#add").click(function () {
        window.location.href = "/user/toAdd";
    });
    $("#edit").click(function () {
        if(selects.length==0||selects.length>1){
            layer.alert("请选择一条数据")
        }else {
            window.location.href = "/user/updateP/"+selects;
        }
    });
    //批量删除
    $remove.click(function () {
        layer.confirm('确定删除', {icon: 3, title: '提示'}, function () {
            $.post("/user/del",{ids:selects.toString()},function(data){
                if(data.succese==true){
                    $table.bootstrapTable("refresh");
                    layer.msg("删除成功",{icon: 1});
                    $remove.prop("disabled",true);
                }else {
                    layer.alert("记录正在被使用!", {skin: 'layui-layer-molv'})
                }
            });
        });
    });


    $("#search").click(function () {
        $table.bootstrapTable('refresh',{query:{offset:0}});
    });
    //清空查询条件
    $("#clearopt").click(function () {
        $("#name").val('');
        $("#studentId").val('');
    });
    $("#exit").click(function () {
        layer.confirm('确定退出', {icon: 3, title: '提示'}, function () {
            window.location.href = "/user/exit"
        });
    });

</script>

<!-- the following scripts are used in demo only for onpage help and you don't need them -->
<link rel="stylesheet" href="/ace/assets/css/ace.onpage-help.css"/>


<script type="text/javascript"> ace.vars['base'] = '/ace'; </script>
<script src="/ace/assets/js/src/elements.onpage-help.js"></script>
<script src="/ace/assets/js/src/ace.onpage-help.js"></script>

</body>
</html>

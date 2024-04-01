<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>
<html>
<head>
    <title>Thêm tòa nhà</title>
</head>
<body>
    <div class="main-content">
        <div class="main-content-inner">
            <div class="breadcrumbs" id="breadcrumbs">
                <script type="text/javascript">
                    try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
                </script>

                <ul class="breadcrumb">
                    <li>
                        <i class="ace-icon fa fa-home home-icon"></i>
                        <a href="#">Home</a>
                    </li>
                    <li class="active">Dashboard</li>
                </ul><!-- /.breadcrumb -->

            </div>

            <div class="page-content">

                <div class="page-header">
                    <h1>
                        Danh sách tòa nhà
                        <small>
                            <i class="ace-icon fa fa-angle-double-right"></i>
                            Sửa tòa nhà
                        </small>
                    </h1>
                </div><!-- /.page-header -->

                <div class="row" style="font-family: 'Times New Roman', Times, serif;">
                    <div class="col-xs-12">
                        <div class="widget-box ui-sortable-handle">
                            <div class="widget-header">
                                <h5 class="widget-title">Tìm kiếm</h5>

                                <div class="widget-toolbar">

                                    <a href="#" data-action="collapse">
                                        <i class="ace-icon fa fa-chevron-up"></i>
                                    </a>

                                </div>
                            </div>

                            <div class="widget-body">
                                <div class="widget-main">
                                    <form:form class="form-horizontal" role="form" id="listForm" modelAttribute="modelEdit" method="GET">
                                        <div class="row">
                                            <div class="form-group">
                                                <div class="col-xs-12">
                                                    <div class="col-xs-4">
                                                        <label class="name">Tên can ho</label>

                                                        <form:input type="text" class="form-control" path="tenCanHo"/>
                                                    </div>
                                                    <form:input path="trangThai" type="hidden"/>
                                                    <form:input type="hidden" class="form-control" path="id"/>

                                                    <c:if test="${empty idCanHo}">
                                                        <div class="col-xs-4">
                                                            <label class="name">Tên chung cư</label>
                                                            <form:select class="form-control" path="idChungCu">

                                                                <form:options items="${mapAllChungCu}"/>

                                                            </form:select>
                                                        </div>
                                                    </c:if>
                                                    <c:if test="${not empty idCanHo}">
                                                        <div class="col-xs-4">
                                                            <label class="name">Tên chung cư</label>
                                                            <form:input type="text" class="form-control" path="tenChungCuCuaCanHo" readonly="true"/>
                                                            <form:input type="hidden" class="form-control" path="idChungCu"/>
                                                        </div>
                                                        <div class="col-xs-4">
                                                            <label class="name">Lượt xem</label>
                                                            <form:input type="text" class="form-control" path="luotXem" readonly="true"/>

                                                        </div>
                                                    </c:if>
                                                    <div class="col-xs-4">
                                                        <label class="name">Loại căn hộ</label>
                                                        <form:select class="form-control" path="loaiCanHo">

                                                            <form:option value="Bình dân">Bình dân</form:option>
                                                            <form:option value="Trung cấp">Trung cấp</form:option>
                                                            <form:option value="Cao cấp">Cao cấp</form:option>
                                                        </form:select>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <div class="col-xs-12">
                                                    <div class="col-xs-4">
                                                        <label class="name">Tầng</label>
                                                        <form:input type="text" class="form-control" path="tang"/>
                                                    </div>
                                                    <div class="col-xs-4">
                                                        <label class="name">Số phòng tắm</label>
                                                        <form:input type="text" class="form-control" path="soPhongTam"/>
                                                    </div>
                                                    <div class="col-xs-4">
                                                        <label class="name">Số phòng ngủ</label>
                                                        <form:input type="text" class="form-control" path="soPhongNgu"/>
                                                    </div>
                                                </div>
                                                <div class="col-xs-12">
                                                    <div class="col-xs-12">
                                                        <label class="name">Mô tả</label>
                                                        <form:input type="text" class="form-control" path="moTa"/>
                                                    </div>

                                                </div>
                                            </div>



                                            <div class="form-group">
                                                <div class="col-xs-12">
                                                    <div class="col-xs-6">
                                                        <label class="name">Diện tích</label>
                                                        <form:input type="number" class="form-control" path="dienTich"/>
                                                    </div>

                                                    <div class="col-xs-6">
                                                        <label class="name">Giá</label>
                                                        <form:input type="number" class="form-control" path="giaBan"/>
                                                    </div>

                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label class="col-sm-3 no-padding-right">Hình đại diện</label>
                                                <input class="col-sm-3 no-padding-right" type="file" id="uploadImage"/>

                                                <div class="col-sm-9">
                                                    <c:if test="${not empty modelEdit.image}">
                                                        <c:set var="imagePath" value="/repository${modelEdit.image}"/>
                                                        <img src="${imagePath}" id="viewImage" width="300px" height="300px" style="margin-top: 50px">
                                                    </c:if>
                                                    <c:if test="${empty modelEdit.image}">
                                                        <img src="/admin/image/default.png" id="viewImage" width="300px" height="300px">
                                                    </c:if>
                                                </div>

                                            <%--                                                <div class="col-xs-4">--%>
<%--                                                    <label class="col-xs-9">Hình đại diện</label>--%>
<%--                                                    <input type="file" class="form-control" id="image" name="image">--%>
<%--                                                    <img src="" alt="" width="200px" height="200px">--%>
<%--                                                </div>--%>
                                            </div>


                                            <div class="form-group">
                                                <div class="col-xs-12">
                                                    <div class="col-xs-6">
                                                        <button type="button" class="btn btn-danger" id="btnThemHoacSuaCanHo">
                                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
                                                                <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001q.044.06.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1 1 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0"></path>
                                                            </svg>
                                                            Okay
                                                        </button>
                                                        <button type="button" class="btn btn-danger" id="btnHuyThaoTac">
                                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
                                                                <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001q.044.06.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1 1 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0"></path>
                                                            </svg>
                                                            Hủy
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                    </form:form>
                                </div>
                            </div>

                            <div class="pull-right">
                                <a href="/admin/building-edit">
                                    <button class="btn-info" title="Thêm tòa nhà">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-building-add" viewBox="0 0 16 16">
                                            <path d="M12.5 16a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7m.5-5v1h1a.5.5 0 0 1 0 1h-1v1a.5.5 0 0 1-1 0v-1h-1a.5.5 0 0 1 0-1h1v-1a.5.5 0 0 1 1 0"/>
                                            <path d="M2 1a1 1 0 0 1 1-1h10a1 1 0 0 1 1 1v6.5a.5.5 0 0 1-1 0V1H3v14h3v-2.5a.5.5 0 0 1 .5-.5H8v4H3a1 1 0 0 1-1-1z"/>
                                            <path d="M4.5 2a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm-6 3a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm-6 3a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5z"/>
                                        </svg>
                                    </button>
                                </a>
                                <button class="btn-danger" title="Xóa tòa nhà">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-building-dash" viewBox="0 0 16 16">
                                        <path d="M12.5 16a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7M11 12h3a.5.5 0 0 1 0 1h-3a.5.5 0 0 1 0-1"/>
                                        <path d="M2 1a1 1 0 0 1 1-1h10a1 1 0 0 1 1 1v6.5a.5.5 0 0 1-1 0V1H3v14h3v-2.5a.5.5 0 0 1 .5-.5H8v4H3a1 1 0 0 1-1-1z"/>
                                        <path d="M4.5 2a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm-6 3a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm-6 3a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5z"/>
                                    </svg>
                                </button>
                            </div>

                        </div>

                    </div>
                </div>
            </div><!-- /.page-content -->
        </div>
    </div><!-- /.main-content -->
    <script src="/admin/assets/js/jquery.2.1.1.min.js"></script>
    <script src="/admin/assets/js/jquery.dataTables.bootstrap.js"></script>
    <script>
        var imageBase64 = '';
        var imageName = '';
        $('#btnThemHoacSuaCanHo').click(function () {
            var data = {};
            var formData = $("#listForm").serializeArray();
            $.each(formData, function (i, e) {
                if ('' !== e.value && null != e.value) {
                    data['' + e.name + ''] = e.value;
                }

                if ('' !== imageBase64) {
                    data['imageBase64'] = imageBase64;
                    data['imageName'] = imageName;
                }
            });
            var buildingId = data['id'];

            $('#loading_image').show();

            $.ajax({
                type: "POST",
                url: "/admin/canho",
                data: JSON.stringify(data),
                // dataType: "json",
                contentType: "application/json",
                success: function (res) {

                    // $('#loading_image').hide();
                    // showMessageConfirmation("Thành công", "Thao tác thành công!", "success", "/admin/building-edit-" + res.id);
                    window.location.href = "/admin/building-edit";
                },
                error: function () {
                    $('#loading_image').hide();
                    var redirectUrl = (null === buildingId) ? "" : "/admin/building-edit-" + {buildingId};
                    showMessageConfirmation("Thất bại", "Đã có lỗi xảy ra! Vui lòng kiểm tra lại.", "warning", redirectUrl);
                    window.location.href="/admin/building-edit";
                }
            });
        });

        $('#btnHuyThaoTac').click(function (e) {
            e.preventDefault();
            window.location.href = "/admin/building-list";

        });

        $('#uploadImage').change(function (event) {
            var reader = new FileReader();
            var file = $(this)[0].files[0];
            reader.onload = function(e){
                imageBase64 = e.target.result;
                imageName = file.name; // ten hinh khong dau, khoang cach. vd: a-b-c
            };
            reader.readAsDataURL(file);
            openImage(this, "viewImage");
        });

        function openImage(input, imageView) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    $('#' +imageView).attr('src', reader.result);
                }
                reader.readAsDataURL(input.files[0]);
            }
        }
    </script>
</body>
</html>

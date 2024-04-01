<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp" %>
<html>
<head>
    <title>Danh sách tòa nhà</title>
</head>
<body>
    <div class="main-content">
		<script type="text/javascript">
			try{ace.settings.check('main-container' , 'fixed')}catch(e){}
		</script>

		<div class="main-content">
			<div class="main-content-inner">
				<div class="breadcrumbs" id="breadcrumbs">
					<script type="text/javascript">
						try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
					</script>

					<ul class="breadcrumb">
						<li>
							<i class="ace-icon fa fa-home home-icon"></i>
							<a href="/trang-chu">Home</a>
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
								Quản lý tòa nhà
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
										<form:form class="form-horizontal" modelAttribute="modelTimKiem" role="form" id="listForm" action="/admin/building-list" method="GET">
											<div class="row">
												<div class="form-group">
													<div class="col-xs-12">
														<div class="col-xs-4">
															<label class="name">Tên chung cư</label>
<%--															<input type="text" class="form-control" name="tenChungCu" value="${modelTimKiem.tenChungCu}">--%>
															<form:select class="form-control" path="idChungCu">
																<form:option value="">---Chọn chung cư---</form:option>
																<form:options items="${mapAllChungCu}"/>

															</form:select>

														</div>
														<div class="col-xs-4">
															<label class="name">Tên Căn hộ</label>
															<form:input path="tenCanHo" class="form-control"/>

														</div>

														<div class="col-xs-4">
															<label class="name">Loại căn hộ</label>
															<form:select class="form-control" path="loaiCanHo">
																<form:option value="">---Chọn loại căn hộ---</form:option>
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
															<form:input path="tang" class="form-control"/>
														</div>
														<div class="col-xs-4">
															<label class="name">Số phòng tắm</label>
															<form:input path="soPhongTam" class="form-control"/>
														</div>
														<div class="col-xs-4">
															<label class="name">Số phòng ngủ</label>
															<form:input path="soPhongNgu" class="form-control"/>
														</div>
													</div>
												</div>



												<div class="form-group">
													<div class="col-xs-12">
														<div class="col-xs-3">
															<label class="name">Diện tích từ</label>
															<form:input path="dienTichTu" class="form-control"/>
														</div>
														<div class="col-xs-3">
															<label class="name">Diện tích đến</label>
															<form:input path="dienTichDen" class="form-control"/>
														</div>
														<div class="col-xs-3">
															<label class="name">Giá mua từ</label>
															<form:input path="giaMuaTu" class="form-control"/>
														</div>
														<div class="col-xs-3">
															<label class="name">Giá mua đến</label>
															<form:input path="giaMuaDen" class="form-control"/>
														</div>
													</div>
												</div>

												<div class="form-group">
													<div class="col-xs-12">
														<div class="col-xs-4">
															<label class="name">Tên quản lý</label>
															<form:input path="tenQuanLy" class="form-control"/>
														</div>
														<div class="col-xs-4">
															<label class="name">SĐT quản lý</label>
															<form:input path="soDienThoai" class="form-control"/>
														</div>

													</div>
												</div>


												<div class="form-group">
													<div class="col-xs-12">
														<div class="col-xs-6">
															<button type="submit" class="btn btn-xs btn-danger" id="btnTimKiemCanHo">
																<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
																	<path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001q.044.06.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1 1 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0"></path>
																</svg>
																Tìm kiếm
															</button>
														</div>
													</div>
												</div>

											</div>
										</form:form>
									</div>
								</div>

								<div class="pull-right" style="margin-top: 10px">
									<a href="/admin/building-edit">
										<button class="btn-info" title="Thêm tòa nhà">
											<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-building-add" viewBox="0 0 16 16">
												<path d="M12.5 16a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7m.5-5v1h1a.5.5 0 0 1 0 1h-1v1a.5.5 0 0 1-1 0v-1h-1a.5.5 0 0 1 0-1h1v-1a.5.5 0 0 1 1 0"/>
												<path d="M2 1a1 1 0 0 1 1-1h10a1 1 0 0 1 1 1v6.5a.5.5 0 0 1-1 0V1H3v14h3v-2.5a.5.5 0 0 1 .5-.5H8v4H3a1 1 0 0 1-1-1z"/>
												<path d="M4.5 2a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm-6 3a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm-6 3a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5z"/>
											</svg>
										</button>
									</a>
									<button class="btn-danger" title="Xóa tòa nhà" id="btnXoaAllCanHo">
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

					<!-- Bảng danh sách -->
					<div class="row">
						<div class="col-xs-12">
							<table id="listTable" style="margin: 3em 0 1.5em;" class="table table-striped table-bordered table-hover">
								<thead>
									<tr>
										<th class="center">
											<label class="pos-rel">
												<input type="checkbox" class="ace">
												<span class="lbl"></span>
											</label>
										</th>
										<th>Căn hộ</th>
										<th>Chung cư</th>
										<th>Tầng</th>
										<th>Loại</th>
										<th>Giá</th>
										<th>Diện tích</th>
										<th>Số phòng ngủ</th>
										<th>Số phòng tắm</th>
										<th>Thao tác</th>
									</tr>
								</thead>

								<tbody>
									<c:forEach var="item" items="${modelKetQua}">
										<tr>
											<td class="center">
												<label class="pos-rel">
													<input type="checkbox" class="ace" value="${item.id}">
													<span class="lbl"></span>
												</label>
											</td>

<%--											<td>--%>
<%--												<a href="#">ace.com</a>--%>
<%--											</td>--%>
<%--											<td>$45</td>--%>
<%--											<td class="hidden-480">3,330</td>--%>
<%--											<td>Feb 12</td>--%>

<%--											<td class="hidden-480">--%>
<%--												<span class="label label-sm label-warning">Expiring</span>--%>
<%--											</td>--%>

											<td>${item.tenCanHo}</td>
											<td>${item.tenChungCu}</td>
											<td>${item.tang}</td>
											<td>${item.loaiCanHo}</td>
											<td>${item.giaBan}</td>
											<td>${item.dienTich}</td>
											<td>${item.soPhongTam}</td>
											<td>${item.soPhongNgu}</td>

											<td>
												<div class="hidden-sm hidden-xs btn-group">
													<button class="btn btn-xs btn-success" title="Giao tòa1 nhà" onclick="giaoCanHo(${item.id})">
														<svg xmlns="http://www.w3.org/2000/svg" width="16" height="13" fill="currentColor" class="bi bi-building" viewBox="0 0 16 16">
															<path d="M4 2.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5zm3 0a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5zm3.5-.5a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zM4 5.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5zM7.5 5a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm2.5.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5zM4.5 8a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm2.5.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5zm3.5-.5a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5z"/>
															<path d="M2 1a1 1 0 0 1 1-1h10a1 1 0 0 1 1 1v14a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1zm11 0H3v14h3v-2.5a.5.5 0 0 1 .5-.5h3a.5.5 0 0 1 .5.5V15h3z"/>
														</svg>
													</button>

													<a class="btn btn-xs btn-info" title="Sửa tòa nhà" href="/admin/building-edit-${item.id}">
														<i class="ace-icon fa fa-pencil bigger-120"></i>
													</a>

													<button class="btn btn-xs btn-danger" title="Xóa tòa nhà" onclick="xoaCanHo(${item.id})">
														<i class="ace-icon fa fa-trash-o bigger-120"></i>
													</button>

												</div>

												<div class="hidden-md hidden-lg">
													<div class="inline pos-rel">
														<button class="btn btn-minier btn-primary dropdown-toggle" data-toggle="dropdown" data-position="auto">
															<i class="ace-icon fa fa-cog icon-only bigger-110"></i>
														</button>

														<ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
															<li>
																<a href="#" class="tooltip-info" data-rel="tooltip" title="" data-original-title="View">
																	<span class="blue">
																		<i class="ace-icon fa fa-search-plus bigger-120"></i>
																	</span>
																</a>
															</li>

															<li>
																<a href="#" class="tooltip-success" data-rel="tooltip" title="" data-original-title="Edit">
																	<span class="green">
																		<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																	</span>
																</a>
															</li>

															<li>
																<a href="#" class="tooltip-error" data-rel="tooltip" title="" data-original-title="Delete">
																	<span class="red">
																		<i class="ace-icon fa fa-trash-o bigger-120"></i>
																	</span>
																</a>
															</li>
														</ul>
													</div>
												</div>
											</td>
										</tr>
									</c:forEach>




								</tbody>
							</table>
						</div>
					</div>
				</div><!-- /.page-content -->
			</div>
		</div><!-- /.main-content -->

    </div><!-- /.main-container -->


	<div class="modal fade" id="giaoToaNhaModal" role="dialog" style="font-family: 'Times New Roman', Times, serif;">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Danh sách nhân viên</h4>
				</div>
				<div class="modal-body">
					<table class="table table-striped table-bordered table-hover" id="staffList">
						<thead>
							<tr>
								<th class="center">Chọn</th>
								<th class="center">Tên nhân viên</th>
							</tr>
						</thead>

						<tbody class="center">
							<tr>
								<td>
									<input type="checkbox" id="checkbox_1" value="1">
								</td>

								<td>Lê Văn B</td>

							</tr>

							<tr>
								<td>
									<input type="checkbox" id="checkbox_2" value="2">
								</td>

								<td>Nguyễn Văn A</td>

							</tr>


						</tbody>
					</table>

					<input type="hidden" name="buildingId" id="buildingId" value="">
				</div>
				<div class="modal-footer">
					<button type="submit" class="btn btn-success" id="btnGiaoCanHo">Giao tòa nhà</button>
					<button type="button" class="btn btn-danger" data-dismiss="modal">Đóng</button>
				</div>
			</div>

		</div>
	</div>
	<script src="assets/js/jquery.2.1.1.min.js"></script>
	<script>
		function giaoCanHo(buildingId){
			$('#giaoCanHoModal').modal();
		}
		$('#btnTimKiemCanHo').click(function (e){
			e.preventDefault();
			$('#listForm').submit();
		});
		function xoaCanHo(id){
			var idCanHo =[id];
			deleteCanHo(idCanHo);
		}
		$('#btnXoaAllCanHo').click(function (e){
			e.preventDefault();
			var idCanHos =$('#listTable').find('tbody input[type = checkbox]:checked').map(function (){
				return $(this).val();
			}).get();
			deleteCanHo(idCanHos);
		});
		function deleteCanHo(id){
			$.ajax({
				type:"DELETE",
				url:"/admin/canho/" + id,
				data:JSON.stringify(id),
				contentType:"application/json",
				// dataType:"JSON",
				success: function (respond){
					window.location.href="http://localhost:8081/admin/home";
				},
				error: function (respond){
					console.log("failed");
					console.log(respond);
				}
			})
		}
	</script>
</body>
</html>

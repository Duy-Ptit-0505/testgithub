<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trang chủ</title>
</head>

<body>

<div class="site-loader"></div>

<div class="site-wrap">


<div class="slide-one-item home-slider owl-carousel">
    <c:forEach items="${top5CanHo}" var="item">
        <div class="site-blocks-cover overlay" style="background-image: url(${item.image});" data-aos="fade" data-stellar-background-ratio="0.5">
            <div class="container">
                <div class="row align-items-center justify-content-center text-center">
                    <div class="col-md-10">
                        <span class="d-inline-block bg-success text-white px-3 mb-3 property-offer-type rounded">TOP 5 CĂN HỘ CÓ LƯỢT XEM NHIỀU NHẤT</span>
                        <h1 class="mb-2">${item.diaChi}</h1>
                        <p class="mb-5"><strong class="h2 text-success font-weight-bold">$${item.giaBan}</strong></p>
                        <p>${item.luotXem} views</p>
                        <p><a href="/web/chitiet/${item.id}" class="btn btn-white btn-outline-white py-3 px-5 rounded-0 btn-2">See Details</a></p>

                    </div>
                </div>
            </div>
        </div>
    </c:forEach>


</div>


<div class="site-section site-section-sm pb-0">
    <div class="container">
        <div class="row">
            <form:form class="form-search col-md-12" style="margin-top: -100px;" modelAttribute="modelTimKiemUser" role="form" id="listForm" action="/web/home" method="GET">
                <div class="row  align-items-end">
                    <div class="col-md-3">
                        <label for="list-types">Chon chung cu</label>
                        <div class="select-wrap">
                            <span class="icon icon-arrow_drop_down"></span>
                            <form:select path="idChungCu" name="list-types" id="list-types" class="form-control d-block rounded-0">
                                <form:option value="">---Chọn chung cư---</form:option>
                                <form:options items="${mapAllChungCu}"/>
                            </form:select>

                        </div>
                    </div>
                    <div class="col-md-3">
                        <label for="offer-types">Loai Can Ho</label>
                        <div class="select-wrap">
                            <span class="icon icon-arrow_drop_down"></span>
                            <form:select path="loaiCanHo" name="offer-types" id="offer-types" class="form-control d-block rounded-0">
                                <form:option value="">---Chọn loai can ho---</form:option>
                                <form:option value="Bình dân">Bình dân</form:option>
                                <form:option value="Trung cấp">Trung cấp</form:option>
                                <form:option value="Cao cấp">Cao cấp</form:option>
                            </form:select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <label for="select-city">Dien tich tu</label>
                        <div class="">

                            <form:input path="dienTichTu" name="" id="select-city" class="form-control d-block rounded-0"/>

                        </div>
                    </div>
                    <div class="col-md-3">
                        <label for="select-city">Dien tich den</label>
                        <div class="">

                            <form:input path="dienTichDen" name="select-city" id="" class="form-control d-block rounded-0"/>

                        </div>
                    </div>
                    <div class="col-md-3">
                        <label for="select-city">Gia mua tu</label>
                        <div class="">

                            <form:input path="giaBanTu" name="select-city"  id="" class="form-control d-block rounded-0"/>

                        </div>
                    </div>
                    <div class="col-md-3">
                        <label for="select-city">Gia mua den</label>
                        <div class="">

                            <form:input path="giaBanDen" name="select-city" id="" class="form-control d-block rounded-0"/>

                        </div>
                    </div>
                    <div class="col-md-3">
                        <input type="submit" class="btn btn-success text-white btn-block rounded-0" value="Search">
                    </div>
                </div>
            </form:form>
        </div>

        <div class="row">
            <div class="col-md-12">
                <div class="view-options bg-white py-3 px-3 d-md-flex align-items-center">
                    <div class="mr-auto">
                        <a href="index.html" class="icon-view view-module active"><span class="icon-view_module"></span></a>
                        <a href="view-list.html" class="icon-view view-list"><span class="icon-view_list"></span></a>

                    </div>
                    <div class="ml-auto d-flex align-items-center">
                        <div>
                            <a href="#" class="view-list px-3 border-right active">All</a>
                            <a href="#" class="view-list px-3 border-right">Rent</a>
                            <a href="#" class="view-list px-3">Sale</a>
                        </div>


                        <div class="select-wrap">
                            <span class="icon icon-arrow_drop_down"></span>
                            <select class="form-control form-control-sm d-block rounded-0">
                                <option value="">Sort by</option>
                                <option value="">Price Ascending</option>
                                <option value="">Price Descending</option>
                            </select>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>

<div class="site-section site-section-sm bg-light">
    <div class="container">

        <div class="row mb-5">
            <c:forEach items="${listCanHo}" var="item">
                <div class="col-md-6 col-lg-4 mb-4">
                    <div class="property-entry h-100">
                        <a href="/web/chitiet/${item.id}" class="property-thumbnail">
                            <div class="offer-type-wrap">
                                <span class="offer-type bg-danger">Sale</span>
                                <span class="offer-type bg-success">Rent</span>
                            </div>
                            <img src="${item.image}" alt="Image" class="img-fluid" width="880" height="230">
<%--                            <img src="web/img/images1.jpg" alt="Image" class="img-fluid" width="880" height="230">--%>
                        </a>
                        <div class="p-4 property-body">
                            <a href="#" class="property-favorite"><span class="icon-heart-o"></span></a>
                            <h2 class="property-title"><a href="/web/chitiet/${item.id}">${item.tenCanHo}</a></h2>
                            <span class="property-location d-block mb-3"><span class="property-icon icon-room"></span> ${item.diaChi}</span>
                            <strong class="property-price text-primary mb-3 d-block text-success">${item.giaBan} $</strong>
                            <span class="property-location d-block mb-3 text-black"> ${item.luotXem} views</span>

                            <ul class="property-specs-wrap mb-3 mb-lg-0">
                                <li>
                                    <span class="property-specs">Phòng ngủ</span>
                                    <span class="property-specs-number">${item.soPhongNgu}</span>

                                </li>
                                <li>
                                    <span class="property-specs">Phòng tắm</span>
                                    <span class="property-specs-number">${item.soPhongTam}</span>

                                </li>
                                <li>
                                    <span class="property-specs">Diện tích</span>
                                    <span class="property-specs-number">${item.dienTich} m2</span>

                                </li>
                            </ul>

                        </div>
                    </div>
                </div>

            </c:forEach>
        </div>

        <div class="row">
            <div class="col-md-12 text-center">
                <div class="site-pagination">
                    <a href="#" class="active">1</a>
                    <a href="#">2</a>
                    <a href="#">3</a>
                    <a href="#">4</a>
                    <a href="#">5</a>
                    <span>...</span>
                    <a href="#">10</a>
                </div>
            </div>
        </div>

    </div>
</div>

<div class="site-section">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-7 text-center">
                <div class="site-section-title">
                    <h2>Why Choose Us?</h2>
                </div>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Debitis maiores quisquam saepe architecto error corporis aliquam. Cum ipsam a consectetur aut sunt sint animi, pariatur corporis, eaque, deleniti cupiditate officia.</p>
            </div>
        </div>

        <div class="row">
            <div class="col-md-6 col-lg-4">
                <a href="#" class="service text-center">
                    <span class="icon flaticon-house"></span>
                    <h2 class="service-heading">Research Subburbs</h2>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Incidunt iure qui natus perspiciatis ex odio molestia.</p>
                    <p><span class="read-more">Read More</span></p>
                </a>
            </div>
            <div class="col-md-6 col-lg-4">
                <a href="#" class="service text-center">
                    <span class="icon flaticon-sold"></span>
                    <h2 class="service-heading">Sold Houses</h2>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Incidunt iure qui natus perspiciatis ex odio molestia.</p>
                    <p><span class="read-more">Read More</span></p>
                </a>
            </div>
            <div class="col-md-6 col-lg-4">
                <a href="#" class="service text-center">
                    <span class="icon flaticon-camera"></span>
                    <h2 class="service-heading">Security Priority</h2>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Incidunt iure qui natus perspiciatis ex odio molestia.</p>
                    <p><span class="read-more">Read More</span></p>
                </a>
            </div>
        </div>
    </div>
</div>

<%--<div class="site-section bg-light">--%>
<%--    <div class="container">--%>
<%--        <div class="row justify-content-center mb-5">--%>
<%--            <div class="col-md-7 text-center">--%>
<%--                <div class="site-section-title">--%>
<%--                    <h2>Recent Blog</h2>--%>
<%--                </div>--%>
<%--                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Debitis maiores quisquam saepe architecto error corporis aliquam. Cum ipsam a consectetur aut sunt sint animi, pariatur corporis, eaque, deleniti cupiditate officia.</p>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <div class="row">--%>
<%--            <div class="col-md-6 col-lg-4 mb-5" data-aos="fade-up" data-aos-delay="100">--%>
<%--                <a href="#"><img src="images/img_4.jpg" alt="Image" class="img-fluid"></a>--%>
<%--                <div class="p-4 bg-white">--%>
<%--                    <span class="d-block text-secondary small text-uppercase">Jan 20th, 2019</span>--%>
<%--                    <h2 class="h5 text-black mb-3"><a href="#">Art Gossip by Mike Charles</a></h2>--%>
<%--                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias enim, ipsa exercitationem veniam quae sunt.</p>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <div class="col-md-6 col-lg-4 mb-5" data-aos="fade-up" data-aos-delay="200">--%>
<%--                <a href="#"><img src="images/img_2.jpg" alt="Image" class="img-fluid"></a>--%>
<%--                <div class="p-4 bg-white">--%>
<%--                    <span class="d-block text-secondary small text-uppercase">Jan 20th, 2019</span>--%>
<%--                    <h2 class="h5 text-black mb-3"><a href="#">Art Gossip by Mike Charles</a></h2>--%>
<%--                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias enim, ipsa exercitationem veniam quae sunt.</p>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <div class="col-md-6 col-lg-4 mb-5" data-aos="fade-up" data-aos-delay="300">--%>
<%--                <a href="#"><img src="images/img_3.jpg" alt="Image" class="img-fluid"></a>--%>
<%--                <div class="p-4 bg-white">--%>
<%--                    <span class="d-block text-secondary small text-uppercase">Jan 20th, 2019</span>--%>
<%--                    <h2 class="h5 text-black mb-3"><a href="#">Art Gossip by Mike Charles</a></h2>--%>
<%--                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias enim, ipsa exercitationem veniam quae sunt.</p>--%>
<%--                </div>--%>
<%--            </div>--%>

<%--        </div>--%>

<%--    </div>--%>
<%--</div>--%>


<div class="site-section">
    <div class="container">
        <div class="row mb-5 justify-content-center">
            <div class="col-md-7">
                <div class="site-section-title text-center">
                    <h2>Our Agents</h2>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vero magnam officiis ipsa eum pariatur labore fugit amet eaque iure vitae, repellendus laborum in modi reiciendis quis! Optio minima quibusdam, laboriosam.</p>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6 col-lg-4 mb-5 mb-lg-5">
                <div class="team-member">

                    <img src="/web/img/top1CEO.jpg" alt="Image" class="img-fluid rounded mb-4" width="200" height="200">

                    <div class="text">

                        <h2 class="mb-2 font-weight-light text-black h4">Cao Tến Thành</h2>
                        <span class="d-block mb-3 text-white-opacity-05">Đến là Đón</span>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi dolorem totam non quis facere blanditiis praesentium est. Totam atque corporis nisi, veniam non. Tempore cupiditate, vitae minus obcaecati provident beatae!</p>
                        <p>
                            <a href="#" class="text-black p-2"><span class="icon-facebook"></span></a>
                            <a href="#" class="text-black p-2"><span class="icon-twitter"></span></a>
                            <a href="#" class="text-black p-2"><span class="icon-linkedin"></span></a>
                        </p>
                    </div>

                </div>
            </div>

            <div class="col-md-6 col-lg-4 mb-5 mb-lg-5">
                <div class="team-member">

                    <img src="/web/img/top1CEO.jpg" alt="Image" class="img-fluid rounded mb-4" width="200" height="200">

                    <div class="text">

                        <h2 class="mb-2 font-weight-light text-black h4">Cao Tến Thành</h2>
                        <span class="d-block mb-3 text-white-opacity-05">Đến là Đón</span>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Omnis, cumque vitae voluptates culpa earum similique corrupti itaque veniam doloribus amet perspiciatis recusandae sequi nihil tenetur ad, modi quos id magni!</p>
                        <p>
                            <a href="#" class="text-black p-2"><span class="icon-facebook"></span></a>
                            <a href="#" class="text-black p-2"><span class="icon-twitter"></span></a>
                            <a href="#" class="text-black p-2"><span class="icon-linkedin"></span></a>
                        </p>
                    </div>

                </div>
            </div>

            <div class="col-md-6 col-lg-4 mb-5 mb-lg-5">
                <div class="team-member">

                    <img src="/web/img/top1CEO.jpg" alt="Image" class="img-fluid rounded mb-4" width="200" height="200">

                    <div class="text">

                        <h2 class="mb-2 font-weight-light text-black h4">Cao Tến Thành</h2>
                        <span class="d-block mb-3 text-white-opacity-05">Đến là Đón</span>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Maiores illo iusto, inventore, iure dolorum officiis modi repellat nobis, praesentium perspiciatis, explicabo. Atque cupiditate, voluptates pariatur odit officia libero veniam quo.</p>
                        <p>
                            <a href="#" class="text-black p-2"><span class="icon-facebook"></span></a>
                            <a href="#" class="text-black p-2"><span class="icon-twitter"></span></a>
                            <a href="#" class="text-black p-2"><span class="icon-linkedin"></span></a>
                        </p>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>

</div>
</body>
</html>
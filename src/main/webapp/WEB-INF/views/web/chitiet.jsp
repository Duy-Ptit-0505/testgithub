<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!DOCTYPE html>
<html lang="en">
<head>

  <meta name="viewport" content="width=device-width, initial-scale=1">

  <title>eCommerce Product Detail</title>
  <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700" rel="stylesheet">

</head>
<body>

<div class="site-loader"></div>

<div class="site-wrap">


</div>

<div class="site-blocks-cover inner-page-cover overlay" style="background-image: url(${canHo.image});" data-aos="fade" data-stellar-background-ratio="0.5">
  <div class="container">
    <div class="row align-items-center justify-content-center text-center">
      <div class="col-md-10">
        <span class="d-inline-block text-white px-3 mb-3 property-offer-type rounded">Property Details of</span>
        <h1 class="mb-2">${canHo.tenCanHo}</h1>
        <p class="mb-5"><strong class="h2 text-success font-weight-bold">${canHo.giaBan} $</strong></p>
      </div>
    </div>
  </div>
</div>

<div class="site-section site-section-sm">
  <div class="container">
    <div class="row">
      <div class="col-lg-8">
        <div>
          <div class="slide-one-item home-slider owl-carousel">
            <div><img src="${canHo.image}" alt="Image" class="img-fluid"></div>
<%--            <div><img src="/images/hero_bg_2.jpg" alt="Image" class="img-fluid"></div>--%>
<%--            <div><img src="/images/hero_bg_3.jpg" alt="Image" class="img-fluid"></div>--%>
          </div>
        </div>
        <div class="bg-white property-body border-bottom border-left border-right">
          <div class="row mb-5">
            <div class="col-md-6">
              <strong class="text-success h1 mb-3">$${canHo.giaBan}</strong>
            </div>

          </div>
          <div class="row mb-5">
            <div class="col-md-4">
              <span class="property-title text-black">Phòng Tắm:</span>
              <span class="property-title-number text-black">${canHo.soPhongTam} phòng</span>
            </div>
            <div class="col-md-4">
              <span class="property-title text-black">Phòng Ngủ:</span>
              <span class="property-title-number text-black">${canHo.soPhongNgu} phòng</span>
            </div>
            <div class="col-md-4">
              <span class="property-title text-black">Diện tích: </span>
              <span class="property-title-number text-black">${canHo.dienTich} m2</span>
            </div>

          </div>
          <div class="row mb-5">
            <div class="col-md-8">
              <span class="property-title text-black">Địa chỉ: </span>
              <span class="property-title-number text-black">${canHo.diaChi}</span>
            </div>
            <div class="col-md-4">
              <span class="property-title text-black">Lượt xem: </span>
              <span class="property-title-number text-black">${canHo.luotXem}</span>
            </div>


          </div>
          <h2 class="h4 text-black">More Info</h2>
          <p class="text-black">${canHo.moTa}</p>



        </div>
      </div>
      <div class="col-lg-4">

        <div class="bg-white widget border rounded">

          <h3 class="h4 text-black widget-title mb-3">Contact Agent</h3>
          <form action="" class="form-contact-agent">
            <div class="form-group">
              <label for="name">Name</label>
              <input type="text" id="name" class="form-control">
            </div>
            <div class="form-group">
              <label for="email">Email</label>
              <input type="email" id="email" class="form-control">
            </div>
            <div class="form-group">
              <label for="phone">Phone</label>
              <input type="text" id="phone" class="form-control">
            </div>
            <div class="form-group">
              <input type="submit" id="phone" class="btn btn-primary" value="Send Message">
            </div>
          </form>
        </div>

        <div class="bg-white widget border rounded">
          <h3 class="h4 text-black widget-title mb-3">Paragraph</h3>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit qui explicabo, libero nam, saepe eligendi. Molestias maiores illum error rerum. Exercitationem ullam saepe, minus, reiciendis ducimus quis. Illo, quisquam, veritatis.</p>
        </div>

      </div>

    </div>
  </div>
</div>

<div class="site-section site-section-sm bg-light">
  <div class="container">

    <div class="row">
      <div class="col-12">
        <div class="site-section-title mb-5">
          <h2>Related Properties</h2>
        </div>
      </div>
    </div>

    <div class="row mb-5">
      <div class="col-md-6 col-lg-4 mb-4">
        <div class="property-entry h-100">
          <a href="property-details.html" class="property-thumbnail">
            <div class="offer-type-wrap">
              <span class="offer-type bg-danger">Sale</span>
              <span class="offer-type bg-success">Rent</span>
            </div>
            <img src="images/img_1.jpg" alt="Image" class="img-fluid">
          </a>
          <div class="p-4 property-body">
            <a href="#" class="property-favorite"><span class="icon-heart-o"></span></a>
            <h2 class="property-title"><a href="property-details.html">625 S. Berendo St</a></h2>
            <span class="property-location d-block mb-3"><span class="property-icon icon-room"></span> 625 S. Berendo St Unit 607 Los Angeles, CA 90005</span>
            <strong class="property-price text-primary mb-3 d-block text-success">$2,265,500</strong>
            <ul class="property-specs-wrap mb-3 mb-lg-0">
              <li>
                <span class="property-specs">Beds</span>
                <span class="property-specs-number">2 <sup>+</sup></span>

              </li>
              <li>
                <span class="property-specs">Baths</span>
                <span class="property-specs-number">2</span>

              </li>
              <li>
                <span class="property-specs">SQ FT</span>
                <span class="property-specs-number">7,000</span>

              </li>
            </ul>

          </div>
        </div>
      </div>

      <div class="col-md-6 col-lg-4 mb-4">
        <div class="property-entry h-100">
          <a href="property-details.html" class="property-thumbnail">
            <div class="offer-type-wrap">
              <span class="offer-type bg-danger">Sale</span>
              <span class="offer-type bg-success">Rent</span>
            </div>
            <img src="images/img_2.jpg" alt="Image" class="img-fluid">
          </a>
          <div class="p-4 property-body">
            <a href="#" class="property-favorite active"><span class="icon-heart-o"></span></a>
            <h2 class="property-title"><a href="property-details.html">871 Crenshaw Blvd</a></h2>
            <span class="property-location d-block mb-3"><span class="property-icon icon-room"></span> 1 New York Ave, Warners Bay, NSW 2282</span>
            <strong class="property-price text-primary mb-3 d-block text-success">$2,265,500</strong>
            <ul class="property-specs-wrap mb-3 mb-lg-0">
              <li>
                <span class="property-specs">Beds</span>
                <span class="property-specs-number">2 <sup>+</sup></span>

              </li>
              <li>
                <span class="property-specs">Baths</span>
                <span class="property-specs-number">2</span>

              </li>
              <li>
                <span class="property-specs">SQ FT</span>
                <span class="property-specs-number">1,620</span>

              </li>
            </ul>

          </div>
        </div>
      </div>

      <div class="col-md-6 col-lg-4 mb-4">
        <div class="property-entry h-100">
          <a href="property-details.html" class="property-thumbnail">
            <div class="offer-type-wrap">
              <span class="offer-type bg-info">Lease</span>
            </div>
            <img src="images/img_3.jpg" alt="Image" class="img-fluid">
          </a>
          <div class="p-4 property-body">
            <a href="#" class="property-favorite"><span class="icon-heart-o"></span></a>
            <h2 class="property-title"><a href="property-details.html">853 S Lucerne Blvd</a></h2>
            <span class="property-location d-block mb-3"><span class="property-icon icon-room"></span> 853 S Lucerne Blvd Unit 101 Los Angeles, CA 90005</span>
            <strong class="property-price text-primary mb-3 d-block text-success">$2,265,500</strong>
            <ul class="property-specs-wrap mb-3 mb-lg-0">
              <li>
                <span class="property-specs">Beds</span>
                <span class="property-specs-number">2 <sup>+</sup></span>

              </li>
              <li>
                <span class="property-specs">Baths</span>
                <span class="property-specs-number">2</span>

              </li>
              <li>
                <span class="property-specs">SQ FT</span>
                <span class="property-specs-number">5,500</span>

              </li>
            </ul>

          </div>
        </div>
      </div>
    </div>
  </div>


</div>

</body>
</html>
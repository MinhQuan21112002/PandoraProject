<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp" %>

	<!-- Featured Start -->
    <div class="container-fluid pt-5">
        <div class="row px-xl-5 pb-3">
            <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                <div class="d-flex align-items-center border mb-4" style="padding: 30px;">
                    <h1 class="fa fa-check text-primary m-0 mr-3"></h1>
                    <h5 class="font-weight-semi-bold m-0">Hàng chất lượng</h5>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                <div class="d-flex align-items-center border mb-4" style="padding: 30px;">
                    <h1 class="fa fa-shipping-fast text-primary m-0 mr-2"></h1>
                    <h5 class="font-weight-semi-bold m-0">Giao hàng nhanh</h5>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                <div class="d-flex align-items-center border mb-4" style="padding: 30px;">
                    <h1 class="fa fa-exchange-alt text-primary m-0 mr-3"></h1>
                    <h5 class="font-weight-semi-bold m-0">Hoàn trả 14 ngày</h5>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                <div class="d-flex align-items-center border mb-4" style="padding: 30px;">
                    <h1 class="fa fa-phone-volume text-primary m-0 mr-3"></h1>
                    <h5 class="font-weight-semi-bold m-0">Hỗ trợ 24/7 </h5>
                </div>
            </div>
        </div>
    </div>
    <!-- Featured End -->


    <!-- Categories Start -->
    <div class="container-fluid pt-5">
        <div class="row px-xl-5 pb-3">
        
        <!-- Load các category nổi bật -->
        <c:forEach items="${CatList}" var="cat">
            <div class="col-lg-4 col-md-6 pb-1">
                <div class="cat-item d-flex flex-column border mb-4" style="padding: 30px;">
                    <p class="text-right">15 sản phẩm</p>
                    <a href="???????????????????" class="cat-img position-relative overflow-hidden mb-3">
                        <img class="img-fluid" src="${ImgUrl}${cat.image}" alt="">
                    </a>
                    <h5 class="font-weight-semi-bold m-0">${cat.name}</h5>
                </div>
            </div>
		</c:forEach>
        <!-- Load các category nổi bật -->
        
		</div>
    </div>
    <!-- Categories End -->


    <!-- Offer Start -->
    <div class="container-fluid offer pt-5">
        <div class="row px-xl-5">
            <div class="col-md-6 pb-4">
                <div class="position-relative bg-secondary text-center text-md-right text-white mb-2 py-5 px-5">
                    <img src="${dir}/img/offer-1.png" alt="">
                    <div class="position-relative" style="z-index: 1;">
                        <h5 class="text-uppercase text-primary mb-3">20% off the all order</h5>
                        <h1 class="mb-4 font-weight-semi-bold">Spring Collection</h1>
                        <a href="" class="btn btn-outline-primary py-md-2 px-md-3">Shop Now</a>
                    </div>
                </div>
            </div>
            <div class="col-md-6 pb-4">
                <div class="position-relative bg-secondary text-center text-md-left text-white mb-2 py-5 px-5">
                    <img src="${dir}/img/offer-2.png" alt="">
                    <div class="position-relative" style="z-index: 1;">
                        <h5 class="text-uppercase text-primary mb-3">20% off the all order</h5>
                        <h1 class="mb-4 font-weight-semi-bold">Winter Collection</h1>
                        <a href="" class="btn btn-outline-primary py-md-2 px-md-3">Shop Now</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Offer End -->


    <!-- Products Start -->
    <div class="container-fluid pt-5">
        <div class="text-center mb-4">
            <h2 class="section-title px-5"><span class="px-2">🆕Sản phẩm mới</span></h2>
        </div>
	        <div class="row px-xl-5 pb-3">
	        
	        
	         <!-- Load danh sách sản phẩm mới-->
			 <c:forEach items="${ListNew}" var="product">
		            <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
		                <div class="card product-item border-0 mb-4">
		                    <div class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
		                        <img class="img-fluid w-100" src="${ImgUrl}${product.listImages[0]}" alt="">
		                    </div>
		                    
		                    
			                    <div class="card-body border-left border-right text-center p-0 pt-4 pb-3">
			                        <h6 class="text-truncate mb-3">${product.name}</h6>
			                        <div class="d-flex justify-content-center">
			                            <h6>${UtilClass.Price(product.promotionalPrice)}đ</h6>
			                            <h6 class="text-muted ml-2"><del>${UtilClass.Price(product.price)}đ</del></h6>
			                        </div>
			                    </div>
		                    
		                    
		                    <div class="card-footer d-flex justify-content-between bg-light border">
		                        <a href="${Url}product/detail?product_id=${product.id}" class="btn btn-sm text-dark p-0"><i class="fas fa-eye text-primary mr-1"></i>Xem chi tiết</a>
		                        <a href="${Url}product/detail?product_id=${product.id}" class="btn btn-sm text-dark p-0"><i class="fas fa-shopping-cart text-primary mr-1"></i>Thêm giỏ hàng</a>
		                    </div>
		                </div>
		            </div>
	            </c:forEach>
		 		 <!-- Load danh sách sản phẩm mới-->
		 		 
		 		 
	          </div>
    </div>
    <!-- Products End -->


    <!-- Subscribe Start -->
    <div class="container-fluid bg-secondary my-5">
        <div class="row justify-content-md-center py-5 px-xl-5">
            <div class="col-md-6 col-12 py-5">
                <div class="text-center mb-2 pb-2">
                    <h2 class="section-title px-5 mb-3"><span class="bg-secondary px-2">🔔Nhận thông báo</span></h2>
                    <p>Hãy nhập email vào để </p>
                </div>
                <form action="">
                    <div class="input-group">
                        <input type="text" class="form-control border-white p-4" placeholder="Email Goes Here">
                        <div class="input-group-append">
                            <button class="btn btn-primary px-4">Subscribe</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <!-- Subscribe End -->


    <!-- Products Start -->
    <div class="container-fluid pt-5">
        <div class="text-center mb-4">
            <h2 class="section-title px-5"><span class="px-2">🔥Giám giá HOT</span></h2>
        </div>
        <div class="row px-xl-5 pb-3">
			<!-- Load danh sách sản phẩm giảm giá nhiều nhất -->
			 <c:forEach items="${ListPromo}" var="product">
		            <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
		                <div class="card product-item border-0 mb-4">
		                    <div class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
		                        <img class="img-fluid w-100" src="${ImgUrl}${product.listImages[0]}" alt="">
		                    </div>
		                    
		                    
			                    <div class="card-body border-left border-right text-center p-0 pt-4 pb-3">
			                        <h6 class="text-truncate mb-3">${product.name}</h6>
			                        <div class="d-flex justify-content-center">
			                            <h6>${UtilClass.Price(product.promotionalPrice)}đ</h6>
			                            <h6 class="text-muted ml-2"><del>${UtilClass.Price(product.price)}đ</del></h6>
			                        </div>
			                    </div>
		                    
		                    
		                    <div class="card-footer d-flex justify-content-between bg-light border">
		                        <a href="${Url}product/detail?product_id=${product.id}" class="btn btn-sm text-dark p-0"><i class="fas fa-eye text-primary mr-1"></i>Xem chi tiết</a>
		                        <a href="${Url}product/detail?product_id=${product.id}" class="btn btn-sm text-dark p-0"><i class="fas fa-shopping-cart text-primary mr-1"></i>Thêm giỏ hàng</a>
		                    </div>
		                </div>
		            </div>
	            </c:forEach>
		 	<!-- Load danh sách sản phẩm giảm giá nhiều nhất -->
		</div>
    </div>
    <!-- Products End -->


    <!-- Vendor Start -->
    <div class="container-fluid py-5">
        <div class="row px-xl-5">
            <div class="col">
                <div class="owl-carousel vendor-carousel">
                    <div class="vendor-item border p-4">
                        <img src="${dir}/img/vendor-1.jpg" alt="">
                    </div>
                    <div class="vendor-item border p-4">
                        <img src="${dir}/img/vendor-2.jpg" alt="">
                    </div>
                    <div class="vendor-item border p-4">
                        <img src="${dir}/img/vendor-3.jpg" alt="">
                    </div>
                    <div class="vendor-item border p-4">
                        <img src="${dir}/img/vendor-4.jpg" alt="">
                    </div>
                    <div class="vendor-item border p-4">
                        <img src="${dir}/img/vendor-5.jpg" alt="">
                    </div>
                    <div class="vendor-item border p-4">
                        <img src="${dir}/img/vendor-6.jpg" alt="">
                    </div>
                    <div class="vendor-item border p-4">
                        <img src="${dir}/img/vendor-7.jpg" alt="">
                    </div>
                    <div class="vendor-item border p-4">
                        <img src="${dir}/img/vendor-8.jpg" alt="">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Vendor End -->

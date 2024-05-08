<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
	
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
	.product-content{
			overflow-x:hidden;
	}
</style>
</head>
<body>
<h1>${detail_product.name}</h1>
	<div class="row  product-content">
	
		<div id="sidebar" class="span3">
			<div class="well well-small">
				<ul class="nav nav-list">
				<c:forEach var ="items" items="${catogorys}">
				
					<li><a href='<c:url value="/san_pham/${items.id}.htm"/>'><span
							class="icon-chevron-right"></span>${items.name}</a></li>
						</c:forEach>
					
					
					<li><a class="totalInCart" href="cart.html"><strong>Total
								Amount <span class="badge badge-warning pull-right"
								style="line-height: 18px;">$448.42</span>
						</strong></a></li>
				</ul>
				</div>

			<div class="well well-small alert alert-warning cntr">
				<h2>50% Discount</h2>
				<p>
					only valid for online order. <br>
					<br>
					<a class="defaultBtn" href="#">Click here </a>
				</p>
			</div>
			<div class="well well-small">
				<a href="#"><img src="assets/img/paypal.jpg"
					alt="payment method paypal"></a>
			</div>

			<a class="shopBtn btn-block" href="#">Upcoming products <br>
			<small>Click to view</small></a> <br> <br>
			<ul class="nav nav-list promowrapper">
				<li>
					<div class="thumbnail">
						<a class="zoomTool" href="product_details.html"
							title="add to cart"><span class="icon-search"></span> QUICK
							VIEW</a> <img src="assets/img/bootstrap-ecommerce-templates.png"
							alt="bootstrap ecommerce templates">
						<div class="caption">
							<h4>
								<a class="defaultBtn" href="product_details.html">VIEW</a> <span
									class="pull-right">$22.00</span>
							</h4>
						</div>
					</div>
				</li>
				<li style="border: 0">&nbsp;</li>
				<li>
					<div class="thumbnail">
						<a class="zoomTool" href="product_details.html"
							title="add to cart"><span class="icon-search"></span> QUICK
							VIEW</a> <img src="assets/img/shopping-cart-template.png"
							alt="shopping cart template">
						<div class="caption">
							<h4>
								<a class="defaultBtn" href="product_details.html">VIEW</a> <span
									class="pull-right">$22.00</span>
							</h4>
						</div>
					</div>
				</li>
				<li style="border: 0">&nbsp;</li>
				<li>
					<div class="thumbnail">
						<a class="zoomTool" href="product_details.html"
							title="add to cart"><span class="icon-search"></span> QUICK
							VIEW</a> <img src="assets/img/bootstrap-template.png"
							alt="bootstrap template">
						<div class="caption">
							<h4>
								<a class="defaultBtn" href="product_details.html">VIEW</a> <span
									class="pull-right">$22.00</span>
							</h4>
						</div>
					</div>
				</li>
			</ul>

		</div>
		<div class="span9">
			<ul class="breadcrumb">
				<li><a href="index.html">Home</a> <span class="divider">/</span></li>
				<li><a href="products.html">Items</a> <span class="divider">/</span></li>
				<li class="active">Preview</li>
			</ul>
			<div class="well well-small">
				<div class="row-fluid">
					<div class="span5">
						<div id="myCarousel" class="carousel slide cntr">
							<div class="carousel-inner">
								<div class="item active">
									<a href="#"> <img src="<c:url value="/assets/user/img/${detail_product.img}"/>" alt=""
										style="width: 100%"></a>
								</div>
							</div>
							<a class="left carousel-control" href="#myCarousel"
								data-slide="prev">‹</a> <a class="right carousel-control"
								href="#myCarousel" data-slide="next">›</a>
						</div>
					</div>
					<div class="span7">
						<h3>${detail_product.name }</h3>
						<hr class="soft" />

						<form class="form-horizontal qtyFrm">
							<div class="control-group">
								<label class="control-label"><span><fmt:formatNumber type="number" groupingUsed="true" value="${detail_product.price}"/>đ</span></label>
								<div class="controls">
									<input type="number" min="0" value="0" class="span6">
								</div>
							</div>

	
					
							<p>${detail_product.title }
							<p>
								<button type="submit" class="shopBtn">
									<span class=" icon-shopping-cart"></span> Add to cart
								</button>
						</form>
					</div>
				</div>
				<hr class="softn clr" />


				<ul id="productDetail" class="nav nav-tabs">
					<li class="active"><a href="#home" data-toggle="tab">Thong tin mon an
						</a></li>
					<li class=""><a href="#profile" data-toggle="tab">San pham khac
							</a></li>
				</ul>
				<div id="myTabContent" class="tab-content tabWrapper">
					<div class="tab-pane fade active in" id="home">
						${ detail_product.details}

					</div>
					<div class="tab-pane fade" id="profile">
						<div class="row-fluid">
							<div class="span2">
								<img src="assets/img/d.jpg" alt="">
							</div>
							<div class="span6">
								<h5>Product Name</h5>
								<p>Nowadays the lingerie industry is one of the most
									successful business spheres. We always stay in touch with the
									latest fashion tendencies - that is why our goods are so
									popular..</p>
							</div>
							<div class="span4 alignR">
								<form class="form-horizontal qtyFrm">
									<h3>$140.00</h3>
									<label class="checkbox"> <input type="checkbox">
										Adds product to compair
									</label><br>
									<div class="btn-group">
										<a href="product_details.html" class="defaultBtn"><span
											class=" icon-shopping-cart"></span> Add to cart</a> <a
											href="product_details.html" class="shopBtn">VIEW</a>
									</div>
								</form>
							</div>
						</div>
						<hr class="soft">
						<div class="row-fluid">
							<div class="span2">
								<img src="assets/img/d.jpg" alt="">
							</div>
							<div class="span6">
								<h5>Product Name</h5>
								<p>Nowadays the lingerie industry is one of the most
									successful business spheres. We always stay in touch with the
									latest fashion tendencies - that is why our goods are so
									popular..</p>
							</div>
							<div class="span4 alignR">
								<form class="form-horizontal qtyFrm">
									<h3>$140.00</h3>
									<label class="checkbox"> <input type="checkbox">
										Adds product to compair
									</label><br>
									<div class="btn-group">
										<a href="product_details.html" class="defaultBtn"><span
											class=" icon-shopping-cart"></span> Add to cart</a> <a
											href="product_details.html" class="shopBtn">VIEW</a>
									</div>
								</form>
							</div>
						</div>
						<hr class="soft" />
						<div class="row-fluid">
							<div class="span2">
								<img src="assets/img/d.jpg" alt="">
							</div>
							<div class="span6">
								<h5>Product Name</h5>
								<p>Nowadays the lingerie industry is one of the most
									successful business spheres. We always stay in touch with the
									latest fashion tendencies - that is why our goods are so
									popular..</p>
							</div>
							<div class="span4 alignR">
								<form class="form-horizontal qtyFrm">
									<h3>$140.00</h3>
									<label class="checkbox"> <input type="checkbox">
										Adds product to compair
									</label><br>
									<div class="btn-group">
										<a href="product_details.html" class="defaultBtn"><span
											class=" icon-shopping-cart"></span> Add to cart</a> <a
											href="product_details.html" class="shopBtn">VIEW</a>
									</div>
								</form>
							</div>
						</div>
						<hr class="soft" />
						<div class="row-fluid">
							<div class="span2">
								<img src="assets/img/d.jpg" alt="">
							</div>
							<div class="span6">
								<h5>Product Name</h5>
								<p>Nowadays the lingerie industry is one of the most
									successful business spheres. We always stay in touch with the
									latest fashion tendencies - that is why our goods are so
									popular..</p>
							</div>
							<div class="span4 alignR">
								<form class="form-horizontal qtyFrm">
									<h3>$140.00</h3>
									<label class="checkbox"> <input type="checkbox">
										Adds product to compair
									</label><br>
									<div class="btn-group">
										<a href="product_details.html" class="defaultBtn"><span
											class=" icon-shopping-cart"></span> Add to cart</a> <a
											href="product_details.html" class="shopBtn">VIEW</a>
									</div>
								</form>
							</div>
						</div>
						<hr class="soften" />
						<div class="row-fluid">
							<div class="span2">
								<img src="assets/img/d.jpg" alt="">
							</div>
							<div class="span6">
								<h5>Product Name</h5>
								<p>Nowadays the lingerie industry is one of the most
									successful business spheres. We always stay in touch with the
									latest fashion tendencies - that is why our goods are so
									popular..</p>
							</div>
							<div class="span4 alignR">
								<form class="form-horizontal qtyFrm">
									<h3>$140.00</h3>
									<label class="checkbox"> <input type="checkbox">
										Adds product to compair
									</label><br>
									<div class="btn-group">
										<a href="product_details.html" class="defaultBtn"><span
											class=" icon-shopping-cart"></span> Add to cart</a> <a
											href="product_details.html" class="shopBtn">VIEW</a>
									</div>
								</form>
							</div>
						</div>
					</div>
				
					
						<hr class="soften" />
						<div class="row-fluid">
							<div class="span2">
								<img src="assets/img/d.jpg" alt="">
							</div>
							<div class="span6">
								<h5>Product Name</h5>
								<p>Nowadays the lingerie industry is one of the most
									successful business spheres. We always stay in touch with the
									latest fashion tendencies - that is why our goods are so
									popular..</p>
							</div>
							<div class="span4 alignR">
								<form class="form-horizontal qtyFrm">
									<h3>$140.00</h3>
									<label class="checkbox"> <input type="checkbox">
										Adds product to compair
									</label><br>
									<div class="btn-group">
										<a href="product_details.html" class="defaultBtn"><span
											class=" icon-shopping-cart"></span> Add to cart</a> <a
											href="product_details.html" class="shopBtn">VIEW</a>
									</div>
								</form>
							</div>
						</div>
						<hr class="soften" />
						<div class="row-fluid">
							<div class="span2">
								<img src="assets/img/d.jpg" alt="">
							</div>
							<div class="span6">
								<h5>Product Name</h5>
								<p>Nowadays the lingerie industry is one of the most
									successful business spheres. We always stay in touch with the
									latest fashion tendencies - that is why our goods are so
									popular..</p>
							</div>
							<div class="span4 alignR">
								<form class="form-horizontal qtyFrm">
									<h3>$140.00</h3>
									<label class="checkbox"> <input type="checkbox">
										Adds product to compair
									</label><br>
									<div class="btn-group">
										<a href="product_details.html" class="defaultBtn"><span
											class=" icon-shopping-cart"></span> Add to cart</a> <a
											href="product_details.html" class="shopBtn">VIEW</a>
									</div>
								</form>
							</div>
						</div>
						<hr class="soften" />

					</div>
				</div>

			</div>
		</div>
	</div>
	<!-- Body wrapper -->
	//
</body>
</html>
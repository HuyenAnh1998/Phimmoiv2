<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:if
	test="${categoryPhimBo!=null||categoryPhimLe!=null||categoryPhimChieuRap!=null||categoryPhimHoatHinh!=null}">
	<hr
		style="height: 3px; border: none; background-color: rgb(255, 200, 50);">	
	<footer class="text-light">
	<div class="container">
		<h5>Liên hệ</h5>
		<hr class="bg-white">
		<div class="row">
			<div class="col-12">
				<ul class="list-unstyled">
					<li><i class="bi bi-house-door-fill"></i> Địa chỉ: Chiến Thắng- Hà Nội</li>
					<li><i class="bi bi-envelope-fill"></i> Email:xxxx@gmail.com</li>
					<li><i class="bi bi-telephone-fill"></i> Sdt: 091234xxx</li>
					<div style="padding: 10px;"></div>
					<li><a href="#">Quay lại đầu trang</a></li>
				</ul>
			</div>
			<div style="padding: 10px;" class="col-12"></div>
			<div class="col-12">
				<p class="text-center text-muted">
					<span> Bạn đang xem phim tại PHIM MỚI TV</span>
				</p>

			</div>
		</div>
	</div>
</footer>
</c:if>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:if
	test="${categoryPhimBo!=null||categoryPhimLe!=null||categoryPhimChieuRap!=null||categoryPhimHoatHinh!=null}">
	<hr
		style="height: 3px; border: none; background-color: rgb(255, 200, 50);">
	<footer class="text-white-50 bg-dark">
			<div class=" container text-center">
				<div class="views-row views-row-1" style="max-width: 1000px">
					<div class="btn-group" role="group" aria-label="Basic example">
						<button type="button" class="btn btn-secondary" a href="#"> Full phim </a></button>
						<button type="button" class="btn btn-secondary" a href="#"> Phim bộ</a></button>
						<button type="button" class="btn btn-secondary" a href="#"> Phim lẻ</a></button>
						<button type="button" class="btn btn-secondary" a href="#"> Phim hoạt hình</a></button>
						<button type="button" class="btn btn-secondary" a href="#"> Phim hành động</a></button>
						<button type="button" class="btn btn-secondary" a href="#"> Phim tình cảm</a></button>
					</div>
					<br>
					<br>
					<div class="text-center">
						<p>designer ® 2021 Huyền Anh & Hoàng Thêu . <br> 
							<b> xem phim hay chất lượng full hd</b> <br>Liên hệ:xxxx@gmail.com <br>
							<a class="text-white-50 bg-dark" href="/sitemap.xml">sitemap</a> | <a class="text-white-50 bg-dark" href="/page/lien-he">contact</a>
						</p>
					</div>
				</div>
			</div>
		</footer>
	</footer>
</c:if>
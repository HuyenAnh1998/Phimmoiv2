<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="vi-VN">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
	integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l"
	crossorigin="anonymous">
<!-- Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns"
	crossorigin="anonymous"></script>
<!-- Bootstrap ICON -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
<!-- font google -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Sofia">
<!-- jquery -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<title>${phim.title }</title>
</head>

<style>
.menu1:hover {
	color: rgb(255, 200, 50);
}

.menu2:hover {
	color: white;
	background-color: #708090;
}

.ifra {
	height: 620px;
}

@media screen and (max-width: 1000px) {
	.ifra {
		height: 556px;
	}
}

@media screen and (max-width: 950px) {
	.ifra {
		height: 528px;
	}
}

@media screen and (max-width: 900px) {
	.ifra {
		height: 500px;
	}
}

@media screen and (max-width: 850px) {
	.ifra {
		height: 472px;
	}
}

@media screen and (max-width: 800px) {
	.ifra {
		height: 444px;
	}
}

@media screen and (max-width: 750px) {
	.ifra {
		height: 417px;
	}
}

@media screen and (max-width: 700px) {
	.ifra {
		height: 389px;
	}
}

@media screen and (max-width: 650px) {
	.ifra {
		height: 361px;
	}
}

@media screen and (max-width: 600px) {
	.ifra {
		height: 333px;
	}
}

@media screen and (max-width: 550px) {
	.ifra {
		height: 306px;
	}
}

@media screen and (max-width: 500px) {
	.ifra {
		height: 278px;
	}
}

@media screen and (max-width: 450px) {
	.ifra {
		height: 250px;
	}
}

@media screen and (max-width: 400px) {
	.ifra {
		height: 222px;
	}
}

.show_txt {
	display: inline-block;
	width: 100%;
	white-space: nowrap;
	overflow: hidden !important;
	text-overflow: ellipsis;
}

.menu1:hover {
	color: rgb(255, 200, 50);
}

.menu3:hover {
	background-color: rgb(60, 179, 113);
}

.menu2:hover {
	color: white;
	background-color: #708090;
}
</style>

<body class="bg-dark" style="font-family: Trirong, serif;">
	<jsp:include page="Head.jsp"></jsp:include>
	<div class="container">
		<div id="search" class="row"></div>
	</div>
	<c:if test="${phim!=null}">
		<div class="container">
			<p style="color: rgb(255, 200, 50);">${phim.type }/
				${phim.category} / ${phim.title }</p>
			<h3 class="text-primary">${phim.title }</h3>
			<c:if test="${boPhim!=null}">
				<p style="color: rgb(240, 240, 240);">T???p: ${phim.episode }</p>
			</c:if>
			<div class="row">
				<div class="col-sm-12">
					<p style="color: rgb(240, 240, 240);">
						L?????t xem: ${phim.view} <i class="bi bi-eye"></i>
					</p>
				</div>
				<div class="col-sm-1" onclick="report()"
					style="color: rgb(240, 240, 240); font-size: 25px;">
					<i class="bi bi-flag-fill"></i>
				</div>
				<c:if test="${sessionScope.admin!=null }">
					<div class="col-sm-1">
						<i data-toggle="modal" data-target="#edit" class="bi bi-hammer"
							style="color: rgb(240, 240, 240); font-size: 25px;"></i>
					</div>
					<div class="col-sm-1">
						<i data-toggle="modal" data-target="#remove" class="bi bi-trash"
							style="color: rgb(240, 240, 240); font-size: 25px;"></i>
					</div>
				</c:if>
			</div>
			<iframe class="ifra" width=100% src="${phim.episodeURL }"
				title="${phim.title }" frameborder="0"
				allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
				allowfullscreen></iframe>
			<c:forEach items="${boPhim}" var="o">
				<span class="btn ${o.episode==phim.episode?"btn-danger":"btn-secondary" } menu3"><a
					style="color: rgb(240, 240, 240); padding: 0px;" class="nav-link"
					href="detail?id=${o.id }">${o.episode}</a></span>
			</c:forEach>

			<div style="background-color: white; width: 100%">
				<c:if test="${sessionScope.user!=null}">
					<div class="row">
						<div class="col-sm-1">
							<img
								style="border-radius: 50%; width: 50px; margin: 10px 0px 0px 10px;"
								alt=""
								src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBwoHCAoJBwkGCAoHCAoICAcIDRIICQcKFREWFhURExMYHCggGCYxGxMTITEhMSkrLi4uFx8zODMsNygtLisBCgoKCw0NDw0NFS0dHxkrKysrKysrLSsrKysrLTcrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrK//AABEIAN8A2QMBIgACEQEDEQH/xAAbAAEAAwEBAQEAAAAAAAAAAAAAAQIFBgQDB//EADYQAQACAgEBBQUFBwUBAAAAAAABAgMRBAUSISIxUjJBUXKSExVCYmMzNFNhcYKiIyRzgZEU/8QAFgEBAQEAAAAAAAAAAAAAAAAAAAEC/8QAFhEBAQEAAAAAAAAAAAAAAAAAABEB/9oADAMBAAIRAxEAPwD9EAaQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADv8AKO+WhxelXyx2s9vs49NfaBn7g3DocXTsOOPY7XzPrHHw/wAKn0lHM7PN0l+FhtGpxU/6ePkdIraJnDOvyyUY4vkxWwTNMlOzKgAAAAAAAAAAAAAAAAAAAPRwMP8A9GaKx3xXxWBodK4PZiMuaN3nyaceZEajUR3R3JZVIACJSA83K4teTSa2jv8Aw2c9mx2w3mlvc6lldZwbrGWI12PaUZAfzFQAAAAAAAAAAAAAAAAavQsf7TJP4vZZTc6LH+2j49pBogIoAAACJfHmY4yYL1n0vuraNxMT74BykfD0i2SIjJeI/DZVpAAAAAAAAAAAAAAAABudE/d/7mG1eh5Y1fHv2fEitgRuEoAAAACLd0TMpefm5Ix4L2mdeHsg5y87yZJ9VrKnf5yNIAAAAAAAAAAAAAAAAT5Ptw808fNS8eXs2fEB1dbRaItHvWY3SebFI+xzW+SzY3DKpERO0gAjcAT5MfrXI76YqTv1PdzeVXj1nxeO3s1c9e9sl5vbzsuYI7/eAqAAAAAAAAAAAAAAAAAAHm0OF1S2KOxyPFWPZyM81sHTYeRjyxE0vSX23Hm5OImPJb7S8RqMmX6kiuotetY3a2ng5PVaUia4fFdi2ta0atO/62RqI8u4gtlyXzW7eSe9UGsQAQAAAAAAAAAAAAAADcL4sVs89jFG5a3F6VSmr5/9S/p/CDKxYb5v2dLz/g9ePpOW/fbsVbdaxXurGo/kmPNKrIjo1vfl1/RP3P8Ar3+lsBRj/c/69/pPuf8AXv8AS2Aox/uf9e/0n3P+vf6WwFGPPR592b/F87dIyxG65KS3ET3lHNZuFmxe1TcflfCe7unudXO3m5PBxciPFXU+qCjnR6eZwr8ad9ndPU8yoAAAAAAAAAAPtx+PbkXilPrfGImZ7NfOzouBxY42OI7Pjn2rGi/F4teNTsUj5p9T7wlG4ZVIjcG4BIhIAhIAIBII3AJRPkbg3AK3rFomt43EsPqHAnBPbxd+P0+lvT/6rakWia2jcSDlfdsenncaeNkmPwX9l5mkAAAAAAAJ8gaHSMEZcn2lo7qVbW+95emYoxcakfHxPQmqts3CogtuDcKgLbNqgLbNqgLbNqgLbNwqAtuDcKgLbN/FUB5+p4Iz4ZmPOrA13fK6ie+NfHwua5FPssuSn5lxHzAUAAAADW5iPzCY84+aoOjw+HHSvpqvtSs+GPlSC2zapALbNo3BuATs2jcEgnZtUgFtm0SgFtm1QFtm1QFtm1UAvtidVr2eRM/GvabLI6v+8R/xA8IAAAAAB74+aoA6OvsRP5Tb4cHLOTDG/OKvuBs2AGzYAbNgBs2AGzYAbNgBs2AGzYAbZPVpic8a/hNWZ1G/SwuXknLmvf8AtB8gAAAf/9k=">
						</div>
						<div class="col-sm-10">
							<p style="margin-top: 25px;">
								<b>${sessionScope.user.name }</b>
							</p>
							<form action="add-comment" method="get">
								<textarea rows="" cols="" class="form-control" name="text"></textarea>
								<input name="user-id" value="${sessionScope.user.id }"
									style="display: none;"> <input name="phim-id"
									value="${phim.id }" style="display: none;">
								<p class="text-primary">
									<button class="btn-primary">B??nh lu???n</button>
								</p>
							</form>
						</div>
						<div class="col-sm-1"></div>
					</div>
				</c:if>
				<c:if test="${sessionScope.user==null}">
					<a
						href="https://www.facebook.com/dialog/oauth?client_id=667188987589328&redirect_uri=https://localhost:8443/phimmoi/login-facebook"><button
							class="btn text-primary">????ng nh???p b???ng Facebook</button></a>
				</c:if>
				<c:forEach items="${comment }" var="o">
					<div class="row">
						<div class="col-sm-1">
							<img
								style="border-radius: 50%; width: 50px; margin: 10px 0px 0px 10px;"
								alt=""
								src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBwoHCAoJBwkGCAoHCAoICAcIDRIICQcKFREWFhURExMYHCggGCYxGxMTITEhMSkrLi4uFx8zODMsNygtLisBCgoKCw0NDw0NFS0dHxkrKysrKysrLSsrKysrLTcrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrK//AABEIAN8A2QMBIgACEQEDEQH/xAAbAAEAAwEBAQEAAAAAAAAAAAAAAQIFBgQDB//EADYQAQACAgEBBQUFBwUBAAAAAAABAgMRBAUSISIxUjJBUXKSExVCYmMzNFNhcYKiIyRzgZEU/8QAFgEBAQEAAAAAAAAAAAAAAAAAAAEC/8QAFhEBAQEAAAAAAAAAAAAAAAAAABEB/9oADAMBAAIRAxEAPwD9EAaQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADv8AKO+WhxelXyx2s9vs49NfaBn7g3DocXTsOOPY7XzPrHHw/wAKn0lHM7PN0l+FhtGpxU/6ePkdIraJnDOvyyUY4vkxWwTNMlOzKgAAAAAAAAAAAAAAAAAAAPRwMP8A9GaKx3xXxWBodK4PZiMuaN3nyaceZEajUR3R3JZVIACJSA83K4teTSa2jv8Aw2c9mx2w3mlvc6lldZwbrGWI12PaUZAfzFQAAAAAAAAAAAAAAAAavQsf7TJP4vZZTc6LH+2j49pBogIoAAACJfHmY4yYL1n0vuraNxMT74BykfD0i2SIjJeI/DZVpAAAAAAAAAAAAAAAABudE/d/7mG1eh5Y1fHv2fEitgRuEoAAAACLd0TMpefm5Ix4L2mdeHsg5y87yZJ9VrKnf5yNIAAAAAAAAAAAAAAAAT5Ptw808fNS8eXs2fEB1dbRaItHvWY3SebFI+xzW+SzY3DKpERO0gAjcAT5MfrXI76YqTv1PdzeVXj1nxeO3s1c9e9sl5vbzsuYI7/eAqAAAAAAAAAAAAAAAAAAHm0OF1S2KOxyPFWPZyM81sHTYeRjyxE0vSX23Hm5OImPJb7S8RqMmX6kiuotetY3a2ng5PVaUia4fFdi2ta0atO/62RqI8u4gtlyXzW7eSe9UGsQAQAAAAAAAAAAAAAADcL4sVs89jFG5a3F6VSmr5/9S/p/CDKxYb5v2dLz/g9ePpOW/fbsVbdaxXurGo/kmPNKrIjo1vfl1/RP3P8Ar3+lsBRj/c/69/pPuf8AXv8AS2Aox/uf9e/0n3P+vf6WwFGPPR592b/F87dIyxG65KS3ET3lHNZuFmxe1TcflfCe7unudXO3m5PBxciPFXU+qCjnR6eZwr8ad9ndPU8yoAAAAAAAAAAPtx+PbkXilPrfGImZ7NfOzouBxY42OI7Pjn2rGi/F4teNTsUj5p9T7wlG4ZVIjcG4BIhIAhIAIBII3AJRPkbg3AK3rFomt43EsPqHAnBPbxd+P0+lvT/6rakWia2jcSDlfdsenncaeNkmPwX9l5mkAAAAAAAJ8gaHSMEZcn2lo7qVbW+95emYoxcakfHxPQmqts3CogtuDcKgLbNqgLbNqgLbNqgLbNwqAtuDcKgLbN/FUB5+p4Iz4ZmPOrA13fK6ie+NfHwua5FPssuSn5lxHzAUAAAADW5iPzCY84+aoOjw+HHSvpqvtSs+GPlSC2zapALbNo3BuATs2jcEgnZtUgFtm0SgFtm1QFtm1QFtm1UAvtidVr2eRM/GvabLI6v+8R/xA8IAAAAAB74+aoA6OvsRP5Tb4cHLOTDG/OKvuBs2AGzYAbNgBs2AGzYAbNgBs2AGzYAbZPVpic8a/hNWZ1G/SwuXknLmvf8AtB8gAAAf/9k=">
						</div>
						<div class="col-sm-10">
							<p style="margin-top: 25px;">
								<b>${o.name }</b>
							</p>
							<c:if test="${o.edit==false }">
								<sub class="text-secondary">${o.time }</sub>
							</c:if>
							<c:if test="${o.edit==true }">
								<sub class="text-secondary">${o.time } ???? ch???nh s???a</sub>
							</c:if>
							<form action="update-comment" method="get">
								<c:if test="${sessionScope.user.id!=o.user_id}">
									<textarea rows="" cols="" class="form-control" name="content"
										readonly="readonly">${o.content }</textarea>
								</c:if>
								<c:if test="${sessionScope.user.id==o.user_id}">
									<input name="id" value="${o.id }" style="display: none;">
									<input name="user-id" value="${sessionScope.user.id }"
										style="display: none;">
									<input name="phim-id" value="${phim.id }"
										style="display: none;">
									<textarea rows="" cols="" class="form-control" name="content">${o.content }</textarea>
								</c:if>
								<p class="text-primary">
									<c:if test="${sessionScope.user!=null }">
										<u onclick="phanHoi(${o.id})">Ph???n h???i</u>
										<span style="margin-left: 10px;"></span>
									</c:if>
									<c:if test="${sessionScope.user.id==o.user_id}">
										<a
											href="remove-comment?id=${o.id }&user_id=${o.user_id}&phim_id=${o.phim_id}">X??a</a>
									</c:if>
									<span style="margin-left: 10px;"></span>
									<c:if test="${sessionScope.user.id==o.user_id}">
										<span><button type="submit" class="btn-primary">C???p
												nh???t</button></span>
									</c:if>
								</p>
							</form>
							<div style="display: none;" id="${o.id }">
								<div class="row">
									<div class="col-sm-1">
										<img
											style="border-radius: 50%; width: 50px; margin: 10px 0px 0px 10px;"
											alt=""
											src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBwoHCAoJBwkGCAoHCAoICAcIDRIICQcKFREWFhURExMYHCggGCYxGxMTITEhMSkrLi4uFx8zODMsNygtLisBCgoKCw0NDw0NFS0dHxkrKysrKysrLSsrKysrLTcrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrK//AABEIAN8A2QMBIgACEQEDEQH/xAAbAAEAAwEBAQEAAAAAAAAAAAAAAQIFBgQDB//EADYQAQACAgEBBQUFBwUBAAAAAAABAgMRBAUSISIxUjJBUXKSExVCYmMzNFNhcYKiIyRzgZEU/8QAFgEBAQEAAAAAAAAAAAAAAAAAAAEC/8QAFhEBAQEAAAAAAAAAAAAAAAAAABEB/9oADAMBAAIRAxEAPwD9EAaQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADv8AKO+WhxelXyx2s9vs49NfaBn7g3DocXTsOOPY7XzPrHHw/wAKn0lHM7PN0l+FhtGpxU/6ePkdIraJnDOvyyUY4vkxWwTNMlOzKgAAAAAAAAAAAAAAAAAAAPRwMP8A9GaKx3xXxWBodK4PZiMuaN3nyaceZEajUR3R3JZVIACJSA83K4teTSa2jv8Aw2c9mx2w3mlvc6lldZwbrGWI12PaUZAfzFQAAAAAAAAAAAAAAAAavQsf7TJP4vZZTc6LH+2j49pBogIoAAACJfHmY4yYL1n0vuraNxMT74BykfD0i2SIjJeI/DZVpAAAAAAAAAAAAAAAABudE/d/7mG1eh5Y1fHv2fEitgRuEoAAAACLd0TMpefm5Ix4L2mdeHsg5y87yZJ9VrKnf5yNIAAAAAAAAAAAAAAAAT5Ptw808fNS8eXs2fEB1dbRaItHvWY3SebFI+xzW+SzY3DKpERO0gAjcAT5MfrXI76YqTv1PdzeVXj1nxeO3s1c9e9sl5vbzsuYI7/eAqAAAAAAAAAAAAAAAAAAHm0OF1S2KOxyPFWPZyM81sHTYeRjyxE0vSX23Hm5OImPJb7S8RqMmX6kiuotetY3a2ng5PVaUia4fFdi2ta0atO/62RqI8u4gtlyXzW7eSe9UGsQAQAAAAAAAAAAAAAADcL4sVs89jFG5a3F6VSmr5/9S/p/CDKxYb5v2dLz/g9ePpOW/fbsVbdaxXurGo/kmPNKrIjo1vfl1/RP3P8Ar3+lsBRj/c/69/pPuf8AXv8AS2Aox/uf9e/0n3P+vf6WwFGPPR592b/F87dIyxG65KS3ET3lHNZuFmxe1TcflfCe7unudXO3m5PBxciPFXU+qCjnR6eZwr8ad9ndPU8yoAAAAAAAAAAPtx+PbkXilPrfGImZ7NfOzouBxY42OI7Pjn2rGi/F4teNTsUj5p9T7wlG4ZVIjcG4BIhIAhIAIBII3AJRPkbg3AK3rFomt43EsPqHAnBPbxd+P0+lvT/6rakWia2jcSDlfdsenncaeNkmPwX9l5mkAAAAAAAJ8gaHSMEZcn2lo7qVbW+95emYoxcakfHxPQmqts3CogtuDcKgLbNqgLbNqgLbNqgLbNwqAtuDcKgLbN/FUB5+p4Iz4ZmPOrA13fK6ie+NfHwua5FPssuSn5lxHzAUAAAADW5iPzCY84+aoOjw+HHSvpqvtSs+GPlSC2zapALbNo3BuATs2jcEgnZtUgFtm0SgFtm1QFtm1QFtm1UAvtidVr2eRM/GvabLI6v+8R/xA8IAAAAAB74+aoA6OvsRP5Tb4cHLOTDG/OKvuBs2AGzYAbNgBs2AGzYAbNgBs2AGzYAbZPVpic8a/hNWZ1G/SwuXknLmvf8AtB8gAAAf/9k=">
									</div>
									<div class="col-sm-11">
										<p style="margin-top: 25px;">
											<b>${sessionScope.user.name }</b>
										</p>
										<form action="add-response" method="get">
											<input name="user_id" value="${sessionScope.user.id}"
												style="display: none;"> <input name="comment_id"
												value="${o.id}" style="display: none;"> <input
												name="phim_id" value="${o.phim_id}" style="display: none;">
											<textarea rows="" cols="" class="form-control" name="content"></textarea>
											<p class="text-primary">
												<button type="submit" class="btn-primary">Ph???n h???i</button>
											</p>
										</form>
									</div>
								</div>
							</div>
							<c:forEach items="${response }" var="j">
								<c:if test="${o.id==j.comment_id}">
									<div class="row">
										<div class="col-sm-1">
											<img
												style="border-radius: 50%; width: 50px; margin: 10px 0px 0px 10px;"
												alt=""
												src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBwoHCAoJBwkGCAoHCAoICAcIDRIICQcKFREWFhURExMYHCggGCYxGxMTITEhMSkrLi4uFx8zODMsNygtLisBCgoKCw0NDw0NFS0dHxkrKysrKysrLSsrKysrLTcrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrK//AABEIAN8A2QMBIgACEQEDEQH/xAAbAAEAAwEBAQEAAAAAAAAAAAAAAQIFBgQDB//EADYQAQACAgEBBQUFBwUBAAAAAAABAgMRBAUSISIxUjJBUXKSExVCYmMzNFNhcYKiIyRzgZEU/8QAFgEBAQEAAAAAAAAAAAAAAAAAAAEC/8QAFhEBAQEAAAAAAAAAAAAAAAAAABEB/9oADAMBAAIRAxEAPwD9EAaQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADv8AKO+WhxelXyx2s9vs49NfaBn7g3DocXTsOOPY7XzPrHHw/wAKn0lHM7PN0l+FhtGpxU/6ePkdIraJnDOvyyUY4vkxWwTNMlOzKgAAAAAAAAAAAAAAAAAAAPRwMP8A9GaKx3xXxWBodK4PZiMuaN3nyaceZEajUR3R3JZVIACJSA83K4teTSa2jv8Aw2c9mx2w3mlvc6lldZwbrGWI12PaUZAfzFQAAAAAAAAAAAAAAAAavQsf7TJP4vZZTc6LH+2j49pBogIoAAACJfHmY4yYL1n0vuraNxMT74BykfD0i2SIjJeI/DZVpAAAAAAAAAAAAAAAABudE/d/7mG1eh5Y1fHv2fEitgRuEoAAAACLd0TMpefm5Ix4L2mdeHsg5y87yZJ9VrKnf5yNIAAAAAAAAAAAAAAAAT5Ptw808fNS8eXs2fEB1dbRaItHvWY3SebFI+xzW+SzY3DKpERO0gAjcAT5MfrXI76YqTv1PdzeVXj1nxeO3s1c9e9sl5vbzsuYI7/eAqAAAAAAAAAAAAAAAAAAHm0OF1S2KOxyPFWPZyM81sHTYeRjyxE0vSX23Hm5OImPJb7S8RqMmX6kiuotetY3a2ng5PVaUia4fFdi2ta0atO/62RqI8u4gtlyXzW7eSe9UGsQAQAAAAAAAAAAAAAADcL4sVs89jFG5a3F6VSmr5/9S/p/CDKxYb5v2dLz/g9ePpOW/fbsVbdaxXurGo/kmPNKrIjo1vfl1/RP3P8Ar3+lsBRj/c/69/pPuf8AXv8AS2Aox/uf9e/0n3P+vf6WwFGPPR592b/F87dIyxG65KS3ET3lHNZuFmxe1TcflfCe7unudXO3m5PBxciPFXU+qCjnR6eZwr8ad9ndPU8yoAAAAAAAAAAPtx+PbkXilPrfGImZ7NfOzouBxY42OI7Pjn2rGi/F4teNTsUj5p9T7wlG4ZVIjcG4BIhIAhIAIBII3AJRPkbg3AK3rFomt43EsPqHAnBPbxd+P0+lvT/6rakWia2jcSDlfdsenncaeNkmPwX9l5mkAAAAAAAJ8gaHSMEZcn2lo7qVbW+95emYoxcakfHxPQmqts3CogtuDcKgLbNqgLbNqgLbNqgLbNwqAtuDcKgLbN/FUB5+p4Iz4ZmPOrA13fK6ie+NfHwua5FPssuSn5lxHzAUAAAADW5iPzCY84+aoOjw+HHSvpqvtSs+GPlSC2zapALbNo3BuATs2jcEgnZtUgFtm0SgFtm1QFtm1QFtm1UAvtidVr2eRM/GvabLI6v+8R/xA8IAAAAAB74+aoA6OvsRP5Tb4cHLOTDG/OKvuBs2AGzYAbNgBs2AGzYAbNgBs2AGzYAbZPVpic8a/hNWZ1G/SwuXknLmvf8AtB8gAAAf/9k=">
										</div>
										<div class="col-sm-11">
											<p style="margin-top: 25px;">
												<b>${j.name }</b>
											</p>
											<c:if test="${j.edit==false }">
												<sub class="text-secondary">${j.time }</sub>
											</c:if>
											<c:if test="${j.edit==true }">
												<sub class="text-secondary">${j.time } ???? ch???nh s???a</sub>
											</c:if>
											<form action="update-response" method="get">
												<c:if test="${sessionScope.user.id!=j.user_id}">
													<textarea rows="" cols="" class="form-control"
														name="content" readonly="readonly">${j.content }</textarea>
												</c:if>
												<c:if test="${sessionScope.user.id==j.user_id}">

													<input name="id" value="${j.id }" style="display: none;">
													<input name="phim_id" value="${j.phim_id }"
														style="display: none;">
													<input name="user_id" value="${j.user_id }"
														style="display: none;">
													<textarea rows="" cols="" class="form-control"
														name="content">${j.content }</textarea>
												</c:if>
												<p class="text-primary">
													<c:if test="${sessionScope.user.id==j.user_id}">
														<a
															href="remove-response?id=${j.id }&user_id=${j.user_id}&phim_id=${j.phim_id}">X??a</a>
													</c:if>
													<c:if test="${sessionScope.user.id==j.user_id}">
														<span style="margin-left: 10px;"></span>
														<span><button class="btn-primary">C???p nh???t</button></span>
													</c:if>
												</p>
											</form>

										</div>
									</div>
								</c:if>
							</c:forEach>
						</div>
						<div class="col-sm-1"></div>
					</div>
				</c:forEach>
			</div>

			<hr
				style="height: 1px; border: none; background-color: rgb(240, 240, 240);">
			<h3 style="color: rgb(255, 200, 50);">C?? th??? b???n mu???n xem</h3>

			<div class="row">
				<c:forEach items="${phimTuongTu}" var="o">
					<div class="col-12 col-md-4 col-xl-2 col-lg-3 col-sm-6">
						<a href="detail?id=${o.id }"> <img src="${o.imageURL }"
							class="card-img-top" alt="${o.title}">
							<p class="show_txt text-primary">${o.title}</p></a>
					</div>
				</c:forEach>

			</div>
		</div>
	</c:if>
	<jsp:include page="Footer.jsp"></jsp:include>

	<!-- Edit -->
	<div class="modal fade" id="edit" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">${phim.title }</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<form action="edit" method="post">
					<div class="modal-body">
						<input name="id" id="id" value="${phim.id }"
							style="display: none;"> <label for="type"><b>Ki???u:</b></label>
						<input type="text" class="form-control" name="type" id="type"
							value="${phim.type }"><label for="category"><b>Th???
								lo???i:</b></label> <input type="text" class="form-control" name="category"
							id="category" value="${phim.category}"><label
							for="episode"><b>T???p:</b></label> <input type="text"
							class="form-control" name="episode" id="episode"
							value="${phim.episode }"><label for="episodeURL"><b>URL:</b></label>
						<input type="text" class="form-control" name="episodeURL"
							id="episodeURL" value="${phim.episodeURL }"><label
							for="imageURL"><b>???nh:</b></label> <input type="text"
							class="form-control" name="imageURL" id="imageURL"
							value="${phim.imageURL }"><label for="title"><b>Ti??u
								?????:</b></label> <input type="text" class="form-control" name="title"
							id="title" value="${phim.title}">
					</div>
					<div class="modal-footer">
						<button type="submit" class="btn btn-primary">C???p nh???t</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<!-- Rempve -->
	<div class="modal fade" id="remove" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">C?? mu???n x??a
						kh??ng ?</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Kh??ng</button>
					<form action="remove" method="post">
						<input name="id" value="${phim.id }" style="display: none;">
						<button type="submit" class="btn btn-primary">C??</button>
					</form>
				</div>
			</div>
		</div>
	</div>
	<script>
		function report() {
			let id = document.getElementById("id").value;
			$.ajax({
				url : "/phimmoi/report",
				type : "post",
				data : {
					id : id
				},
				success : function(data) {

				}

			});

			alert('B??o c??o th??nh c??ng');
		}

		function searchByName(param) {
			var txtSearch = param.value;
			$.ajax({
				url : "/phimmoi/searchByName",
				type : "post",
				data : {
					txt : txtSearch
				},
				success : function(data) {
					var row3 = document.getElementById("search");
					row3.innerHTML = data;
				}

			});
		}
		
		
		function phanHoi(comment_id) {
			document.getElementById(comment_id).style.display = "inline";
		}
	
	</script>
</body>
</html>
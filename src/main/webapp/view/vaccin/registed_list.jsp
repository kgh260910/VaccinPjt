<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="../include/title.jsp"/>

<link href="./res/css/vaccin/vaccin.css" rel="stylesheet" type="text/css">

<jsp:include page="../include/js/vaccin.jsp"/>

</head>
<body>

	<jsp:include page="../include/header.jsp"/>
	
	<jsp:include page="../include/nav.jsp"/>

	<section>
		<div class="section_wrap">		
			<h1>REGISTED LIST</h1>
			<table>
				<thead>
					<tr>
						<th>NO</th>
						<th>NAME</th>
						<th>MAIL</th>
						<th>PHONE</th>
						<th>SS_NUMBER</th>
						<th>SS_NAME</th>
						<th>SS_ADDR</th>
						<th>SS_PHONE</th>
						<th>LOCATION_NO</th>
						<th>LOCATION_NAME</th>
						<th>LOCATION_ADDR</th>
						<th>LOCATION_MANAGER</th>
						<th>TYPE</th>
						<th>TYPE_NO</th>
						<th>TYPE_MANUF_COUNTRY</th>
						<th>TYPE_MANUF_DATE</th>
						<th>REG_DATE</th>
					</tr>
				</thead>
				<tbody>
				
					<c:forEach var="item" items="${vaccinDtos}">
						
						<tr>
							<td>${item.fvp_no}</td>
							<td>${item.fvp_name}</td>
							<td>${item.fvp_mail}</td>
							<td>${item.fvp_phone}</td>
							<td>${item.socialNumberDto.ss_number}</td>
							<td>${item.socialNumberDto.ss_name}</td>
							<td>${item.socialNumberDto.ss_addr}</td>
							<td>${item.socialNumberDto.ss_phone}</td>
							<td>${item.locationDto.fv_location_no}</td>
							<td>${item.locationDto.fv_location_name}</td>
							<td>${item.locationDto.fv_location_addr}</td>
							<td>${item.locationDto.fv_location_manager}</td>
							<td>${item.typeDto.fv_type}</td>
							<td>${item.typeDto.fv_type_no}</td>
							<td>${item.typeDto.fv_type_manuf_country}</td>
							<td>${item.typeDto.fv_type_manuf_date}</td>
							<td>${item.fvp_reg_date}</td>
						</tr>
					</c:forEach>
					
					
				</tbody>		
			</table>
			
		</div>
	</section>

	<jsp:include page="../include/footer.jsp"/>

	
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>

	const registeForm = () => {
		console.log('registeForm() CALLED!!');
		
		let form = document.registe_form;
		if (form.fvp_name.value === '') {
			alert('Input name!!');
			form.fvp_name.focus();
			
		} else if (form.ss_number.value === '') {
			alert('Select social number!!');
			form.ss_number.focus();
			
		} else if (form.fvp_mail.value === '') {
			alert('Input mail!!');
			form.fvp_mail.focus();
			
		} else if (form.fvp_phone === '') {
			alert('Input phone!!');
			form.fvp_phone.focus();
			
		} else if (form.fv_location_no === '') {
			alert('Select location no!!');
			form.fv_location_no.focus();
			
		} else if (form.fv_type === '') {
			alert('Select fv type!!');
			form.fv_type.focus();
			
		} else {
			form.submit();
			
		}
	}
	
</script>
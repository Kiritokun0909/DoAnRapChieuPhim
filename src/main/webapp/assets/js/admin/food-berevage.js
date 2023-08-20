/**
 * 
 */

function isImage(url) {
	return /\.(jpg|jpeg|png|webp|avif|gif|svg)$/.test(url);
}

$(document).ready(
	function() {
		$(".js-active-food-bevarage").addClass("active");
		
		$("button[name='btn-show']")
			.on(
				'click',
				function() {
					var maDichVu = $(this).children(
						'.card-body').children(
							".card-info-hidden.ma-dich-vu")
						.text();
					var linkAnhDichVu = $(this).children(
						'.card-img-top').attr('src');
					var tenDichVu = $(this).children(
						'.card-body').children(
							'.card-title').text();
					var giaDichVu = $(this).children(
						'.card-body').children(
							".card-info-hidden.gia-dich-vu")
						.text();
					
					$("input[name='input-ten-dich-vu']").val(
						tenDichVu);
					$("input[name='input-gia-dich-vu']").val(
						giaDichVu);
					$(".img-preview")
						.attr("src", linkAnhDichVu);
					$("#btn-preview").val('');
					
					$("#modal-submit-button").val(maDichVu)
					$("#modal-submit-button").attr('name', 'submit-button');
					
					$("#form-button").attr('action', 'admin/food-beverage/' + maDichVu + '.htm');
				});

		/*$("#btn-preview").change(function() {
			const file = this.files[0];
			if (file) {
				let reader = new FileReader();
				reader.onload = function(event) {
					$("#img-preview").attr("src", event.target.result);
				};
				reader.readAsDataURL(file);
			}
		});*/

		$("#btn-preview").click(function() {
			var url = $("#basic-url").val();
			console.log(url);
			if (isImage(url)) {
				console.log(url);
				$(".img-preview")
					.attr("src", url);
			}
		});
	});
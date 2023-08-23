/**
 * 
 */

function isImage(url) {
	return /\.(jpg|jpeg|png|webp|avif|gif|svg)$/.test(url);
}

$(document).ready(
	function() {
		$(".js-active-food-bevarage").addClass("active");
	});
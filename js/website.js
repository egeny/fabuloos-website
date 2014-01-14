$(document).ready(function() {
	var
		$links    = $("ul.nav-tabs a, div.platform a.btn"),
		preferred = window.localStorage ? window.localStorage.getItem("preferred") : undefined;

	$links.click(function () {
		$links.removeClass("active");
		var href = $(this).addClass("active").tab("show").attr("href");
		window.localStorage && window.localStorage.setItem("preferred", href);
	});

	if (preferred) {
		$links.filter("[href=" + preferred + "]").click();
	}
});
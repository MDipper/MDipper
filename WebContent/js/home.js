function loadJS(url, callback) {
	console.info("load js: " + url);
	var head = document.getElementsByTagName('head')[0];
	var script = document.createElement('script');
	script.type = 'text/javascript';
	script.src = url;
	if (callback) {
		script.onload = (function(c) {
			c()
		})(callback);
	}
	head.appendChild(script);
}

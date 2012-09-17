function change() {
	$('#image').hide().attr('src', 'kaptcha?' + Math.floor(Math.random() * 100)).fadeIn();
	event.cancelBubble = true;
}
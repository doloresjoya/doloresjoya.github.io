/*Simple Slider JS */

jQuery(document).ready(function ($) {

  $('#checkbox').change(function(){
    setInterval(function () {
        moveRight();
    }, 3000);
  });
  
	var slideCount = $('#slider ul li').length;
	var slideWidth = $('#slider ul li').width();
	var slideHeight = $('#slider ul li').height();
	var sliderUlWidth = slideCount * slideWidth;
	
	$('#slider').css({ width: slideWidth, height: slideHeight });
	
	$('#slider ul').css({ width: sliderUlWidth, marginLeft: - slideWidth });
	
    $('#slider ul li:last-child').prependTo('#slider ul');

    function moveLeft() {
        $('#slider ul').animate({
            left: + slideWidth
        }, 200, function () {
            $('#slider ul li:last-child').prependTo('#slider ul');
            $('#slider ul').css('left', '');
        });
    };

    function moveRight() {
        $('#slider ul').animate({
            left: - slideWidth
        }, 200, function () {
            $('#slider ul li:first-child').appendTo('#slider ul');
            $('#slider ul').css('left', '');
        });
    };

    $('a.control_prev').click(function () {
        moveLeft();
    });

    $('a.control_next').click(function () {
        moveRight();
    });

});    
/*Simple Slider JS */

/*Simple Slider JS */

jQuery(document).ready(function ($) {

  $('#checkbox').change(function(){
    setInterval(function () {
        moveRight();
    }, 3000);
  });
  
	var slideCount = $('#sliderp ul li').length;
	var slideWidth = $('#sliderp ul li').width();
	var slideHeight = $('#sliderp ul li').height();
	var sliderUlWidth = slideCount * slideWidth;
	
	$('#sliderp').css({ width: slideWidth, height: slideHeight });
	
	$('#sliderp ul').css({ width: sliderUlWidth, marginLeft: - slideWidth });
	
    $('#sliderp ul li:last-child').prependTo('#slider ul');

    function moveLeft() {
        $('#sliderp ul').animate({
            left: + slideWidth
        }, 200, function () {
            $('#sliderp ul li:last-child').prependTo('#sliderp ul');
            $('#sliderp ul').css('left', '');
        });
    };

    function moveRight() {
        $('#sliderp ul').animate({
            left: - slideWidth
        }, 200, function () {
            $('#sliderp ul li:first-child').appendTo('#sliderp ul');
            $('#sliderp ul').css('left', '');
        });
    };

    $('a.control_prev').click(function () {
        moveLeft();
    });

    $('a.control_next').click(function () {
        moveRight();
    });

});    
/*Simple Slider JS */
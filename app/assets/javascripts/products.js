// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).ready(function(){
	var review_partial = $('#review_comment, #new_review > div.actions, label');
	var main_pic = $('div:nth-child(5) > dl > img');
	var add_review = $('div:nth-child(8) > a > h5');
	var click = 0;
	review_partial.hide();
	
	$('a.review-toggle').on('click', function(e){
		e.preventDefault()
		review_partial.slideToggle();
		click += 1;
		if(click % 2 === 0){
			add_review.text('Add Review');
		} else {
			add_review.text('Hide Form');
		} 
	});

	main_pic.on('mouseenter', function(){
		$(this).attr('src', 'http://www.calbuzz.com/wp-content/uploads/yoda1.jpg');
	});
	main_pic.on('mouseleave', function(){
		$this.attr('src', '<%= j @products.pic %>')
	});

	$('#reviews-list > h4 > a').on('click', function(e){
		e.preventDefault();
		$('#reviews-list > p').slideToggle();
	})
});
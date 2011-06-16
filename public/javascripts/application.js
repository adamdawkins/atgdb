$(document).ready(function(){
	initRatings();
});

function initRatings(){
	var rating = $('.rating').html();
	rating = parseFloat(rating);
	rating = rating * 10;
	rating = rating * 4;	
	$('#rating-values').css({'width': rating + 'px'});
}
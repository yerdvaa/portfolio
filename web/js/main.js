'use strict';
//FONCTION

function actualize()
{
  var masterpiece = new MasterPiece($('svg').width(), $('svg').height());
  var masterPiece = new MasterPiece($('.svg1').width(), $('.svg1').height());
  masterpiece.build();
  masterPiece.build();
  masterpiece.build(120);
  masterPiece.build(120);
  masterpiece.draw('svg');
  masterPiece.draw('.svg1');
}


// CODE PRINCIPAL
$(function()
{
  //demarrage
	$('.anim').addClass('is-hidden').css({"opacity":0});
	$('.home').textillate({ in: { effect: 'rollIn' } });
	$('.anim').delay(6000).animate({"opacity":1},300);
	$('.home').delay(6000).fadeOut('slow');

  // bande sous la nav
  setInterval(actualize, 3000);
  
  //masonry
  var $grid = $('.grid').masonry({
	  				itemSelector: '.grid-item',
	  				columnWidth: 100,
	  				gutter: 10,
	  				stagger: 10,
	  				resize: true,
					transitionDuration: '0.8s'
				});

  $('.grid').on( 'click', '.grid-item', function() {
	  // change size of item via class
	  $( this ).toggleClass('grid-item--gigante');
	  // trigger layout
	  $('.grid').masonry();
	});
 
});

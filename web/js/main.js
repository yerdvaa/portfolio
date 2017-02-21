'use strict';
/*************************************************************/
/************************DONNEES******************************/
/*************************************************************/
//Pour la partie réalisation
var img =
        [
            {image:'img/realisations/grue_affiche.png'},
            {image:'img/realisations/group.png'},
            {image:'img/realisations/grue1.png'},
            {image:'img/realisations/grue_finale.png'},
            {image:'img/realisations/grue_affiche.png'}
        ];

var statut;

/*************************************************************/
/***********************FONCTIONS*****************************/
/*************************************************************/

// fonction pour le svg
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

//fonction pour les réalisations avec les legos
function refreshAnimLego()
{
    var imgAnim = document.querySelector('.animLego img');
    
    imgAnim.src = '/Mon_Portfolio/web/' + img[statut.index].image;
}

function showImgLego()
{
    statut.index++;
    
    /*if (statut.index == img.length)
    {
        statut.index = 0;
    }*/
     
    refreshAnimLego();
    
}

function playAnimLego()
{
    if (statut.timer == null)
    {
          statut.timer = setInterval(showImgLego, 3000);
          
    }
    
    /*else if (statut.index == img.length)
    {
	clearInterval(statut.timer);	
	statut.timer = null;
        
    }*/
}


/*************************************************************/
/*********************CODE PRINCIPAL**************************/
/*************************************************************/

$(function ()
{
    //intro du site
    $('.anim').addClass('is-hidden').css({"opacity": 0});
    $('.home').textillate({in: {effect: 'rollIn'}});
    $('.anim').delay(6000).animate({"opacity": 1}, 300);
    $('.home').delay(6000).fadeOut('slow');

    // bande sous la nav
    setInterval(actualize, 3000);

    //Compétences avec pluggin masonry
    var $grid = $('.grid').masonry({
        itemSelector: '.grid-item',
        columnWidth: 100,
        gutter: 10,
        stagger: 10,
        resize: true,
        transitionDuration: '0.8s'
    });

    $('.grid').on('click', '.grid-item', function () {
        // change size of item via class
        $(this).toggleClass('grid-item--gigante');
        // trigger layout
        $('.grid').masonry();
    });
    
    // Anim réalisation
        // Initialisation de l'anim
    statut = {};
    statut.index = 0;
    statut.timer = null;
    
        // Installation gestionnaires d'évènement
    $('button').on('click', playAnimLego);
    
        // Affichage initial
    refreshAnimLego();
   
});

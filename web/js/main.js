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
    refreshAnimLego();
    
    if (statut.index >= 4)
    {
        statut.index = -1;
        statut.index++;
       // refreshAnimLego();
    }
}

function onScrollPlayAnimLego()
{
       setInterval(showImgLego, 3000);
       //console.log('toto');
}

// function pour le gestionnaire d'évènement au scroll
function verifSiEnVue()
{
    var $anim_element = $('.animLego');
    var window_height = $(window).height();
    var window_topPosition = $(window).scrollTop();
    var window_bottomPosition = (window_height + window_topPosition);

    $.each($anim_element, function()
    {
        var $element =  $(this);
        var element_height = $element.outerHeight();
        var element_topPosition = $element.offset().top;
        var element_bottomPosition = (element_height + element_topPosition);

        // Vérification de la vue, si à l'écran ou pas
        if ((element_bottomPosition >= window_topPosition) && (element_topPosition <= window_bottomPosition))
        {
            $element.addClass('inView');
        }
        else
        {
            $element.removeClass('inView');
        }
    });
    
    /*if ($anim_element.hasClass('inView'))
        {
            onScrollPlayAnimLego();
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

    // Effet parallax
    $('#slide').parallax('center', 0, 2, true);
    $('#slide').parallax('center', 2900, 2, true);

    
    // Anim réalisation au scroll et lancement au clic
    
        // Initialisation de l'anim
    statut = {};
    statut.index = 0;
    statut.timer = null;
    
        // Installation gestionnaire d'évènement au scroll et au clic
    
    $(window).on('scroll', verifSiEnVue);
    $(window).trigger('scroll');    
    

    
        // Lancement de l'animation
       if ($('.animLego').has('inView'))
        {
            onScrollPlayAnimLego();
        }
      
    
        // Affichage initial
    refreshAnimLego();
        
   
});

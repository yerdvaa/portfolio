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
var navImg = document.querySelector('nav img');

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

}



/*************************************************************/
/*********************CODE PRINCIPAL**************************/
/*************************************************************/

$(function ()
{
    // bande sous la nav
        setInterval(actualize, 3000);

    // Effet parallax
        $('#slide').parallax('center', 0, 2, true);
        $('#slide').parallax('center', 500, 2, true);

    // Nav pour smartphone
        if (window.matchMedia("(max-width: 960px)").matches)
        {
            $('#menu-icon').on('click', function(){
                $('.nav ul').slideDown();
                $(this).addClass('active');
            });

            $('ul li').on('click', function(){
                $('.nav ul').slideUp();
                $(this).removeClass('active');
            });
        }
    
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
     
    // Scroll à l'ancre lors de la navigation
    if (window.matchMedia("(min-width: 960px)").matches)
        {
            $('.nav a').on('click', function(evt){
           // bloquer le comportement par défaut: on ne rechargera pas la page
           evt.preventDefault(); 
           // enregistre la valeur de l'attribut  href dans la variable target
            var target = $(this).attr('href');
           /* le sélecteur $(html, body) permet de corriger un bug sur chrome 
           et safari (webkit) */
            $('html, body')
           // on arrête toutes les animations en cours 
           .stop()
           /* on fait maintenant l'animation vers le haut (scrollTop) vers 
            notre ancre target */
           .animate({scrollTop: $(target).offset().top}, 1000 );
           return false;
            });
        } 
      
});

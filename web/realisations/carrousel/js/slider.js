'use strict';   // Mode strict du JavaScript

/*************************************************************************************************/
/* ****************************************** DONNEES ****************************************** */
/*************************************************************************************************/
var slides = 
[
	{
		image: 'images/1.jpg',
		legend:'Tag sur un mur'
	},
	{
		image: 'images/2.jpg',
		legend:'Arivée sur la ville'
	},
	{
		image: 'images/3.jpg',
		legend:'Batiment design'
	},
	{
		image: 'images/4.jpg',
		legend:'Building de nuit'
	},
	{
		image: 'images/5.jpg',
		legend:'Circulation de nuit dans une grande ville'
	},
	{
		image: 'images/6.jpg',
		legend:'Tour Eiffel'
	}
];

var photo = document.querySelector('img');
var legend = document.querySelector('figcaption');
var buttonNext = document.getElementById('slider-next');
var keyRight;
var buttonPrevious = document.getElementById('slider-previous');
var buttonRandom = document.getElementById('slider-random');
var buttonPlay = document.getElementById('slider-play');
var buttonStop = document.getElementById('slider-stop');
var timer = null;
var barreOutil = document.getElementById('toolbar-toggle');

var state = {};//statut image
state.index = 0;

/*************************************************************************************************/
/* ***************************************** FONCTIONS ***************************************** */
/*************************************************************************************************/
function initialize()
{
	photo.setAttribute('src', slides[0].image);
	legend.textContent = slides[0].legend;
}

function next()
{
	if (state.index < 5)
		{
			state.index++;
			photo.setAttribute('src', slides[state.index].image);
			legend.textContent = slides[state.index].legend;
		}	
	else
		{
			state.index -= 5;
			photo.setAttribute('src', slides[state.index].image);
			legend.textContent = slides[state.index].legend;
		}
}

function previous()
{
	if (state.index > 0)
		{
			state.index--;
			photo.setAttribute('src', slides[state.index].image);
			legend.textContent = slides[state.index].legend;
		}	
	else
		{
			state.index += 5;
			photo.setAttribute('src', slides[state.index].image);
			legend.textContent = slides[state.index].legend;
		}
}

function random()
{
	do
	{
		state.random = getRandomInteger (0, 5);
	}
	while (state.random == state.index);

	state.index = state.random;	
	photo.setAttribute('src', slides[state.index].image);
	legend.textContent = slides[state.index].legend;
}	

function playPause()
{
	buttonStop.classList.toggle('hidden');
}

function outil()
{
	/*var bouton = document.getElementById('button');
	bouton.classList.toggle('notHidden');*/
	$('#button').toggle('notHidden');
	
	
}

function play()
{
	buttonPlay.classList.add('hidden');
	buttonStop.classList.add('notHidden');
	do
	{
		next();
	}
	while (buttonStop.addEventListener('click', runStop))
}

function runStop()
{
	if (timer == null)
	{
		timer = setInterval(play, 2000);
	}
	else 
	{
		clearInterval(timer);
		buttonPlay.classList.add('notHidden');
		buttonPlay.classList.remove('hidden');
		buttonStop.classList.remove('notHidden');
		buttonStop.classList.add('hidden');
		timer == null;
	}
}


/*************************************************************************************************/
/* ************************************** CODE PRINCIPAL *************************************** */
/*************************************************************************************************/
document.addEventListener('DOMContentLoaded', function()
{
	barreOutil.addEventListener('click', outil);
	initialize();
	playPause();
	buttonNext.addEventListener('click', next);
	document.addEventListener('keydown', function (e)
		{
			if (e.keyCode == 39)
			{
				next();
			}
			else if (e.keyCode == 37)
			{
				previous();
			}
			else if  (e.keyCode == 32)
			{
				runStop();
			}
		});
	buttonPrevious.addEventListener('click', previous);
	buttonRandom.addEventListener('click', random);
	buttonPlay.addEventListener('click', runStop);
	buttonStop.addEventListener('click', runStop);
	
});

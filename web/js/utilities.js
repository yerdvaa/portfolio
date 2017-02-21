'use strict';

function getRandomInteger(min, max)
{
    // Renvoie un nombre entier aléatoire compris entre les arguments min et max inclus.
	return Math.floor(Math.random() * (max - min + 1)) + min;
}

function getRandomColor()
{
  var color;
  var index;
  var rand;
  var hexa = ['0','1','2','3','4','5','6','7','8','9','a','b','c','d','e','f'];
  
  color = '#';
  
  for(index = 1 ; index <= 6 ; index++){
   
     // On tire au hasard l'indice du tableau hexa pour ajouter un nouveau caractère
     rand = getRandomInteger(0,15);
     
     color += hexa[rand];
  }
  
  return color;
}
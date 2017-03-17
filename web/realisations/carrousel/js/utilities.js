// Choisir un nombre entier entre un min et un max
function getRandomInteger (min,max)
{
	return Math.floor(Math.random() * (max - min)) + min;
}
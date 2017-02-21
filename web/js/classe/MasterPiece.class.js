'use strict';

const SQUARE_MIN_SIZE = 1;
const SQUARE_MAX_SIZE = 40;

var MasterPiece = function(width, height)
{
    this.width  = width;
	this.height = height;
    this.shapes =  new Array();
};

/*******************************************************/
//METHODES

MasterPiece.prototype.addShape = function(shape)
{
    this.shapes.push(shape);
};

MasterPiece.prototype.getRandomShape = function()
{
    var square;
    var color;
	var size;
	var x,y;
  
    square = new Square();
  
    size = getRandomInteger(SQUARE_MIN_SIZE, SQUARE_MAX_SIZE);
    x    = getRandomInteger(0, this.width);
    y    = getRandomInteger(0, this.height);
  
    color = getRandomColor();
  
    square.setColor(color);
    square.setSize(size);
    square.setPosition(x,y);
  
    return square;
};


MasterPiece.prototype.build = function(nombre)
{
    var index;
    
    for(index=0; index < nombre; index++)
    {
        var shape = this.getRandomShape();
        this.addShape(shape);
    }
};

MasterPiece.prototype.render = function()
{
    var render = '';
  
    this.shapes.forEach(function(shape)
    {
        render += shape.render();
        
    });
  
  return render;
};

MasterPiece.prototype.draw = function(tagSVGSelector)
{

  var tagSVGElement = document.querySelector(tagSVGSelector);

	if(tagSVGElement != null){

		tagSVGElement.innerHTML = this.render();
	}
};


'use strict';

var Square = function()
{
    this.color = 'black';
    this.size = 5;
    this.position = //position du pt en ht à gauche du carré
        {
            x: 0,
            y: 0
        };
};

/******************************************/
// METHODES

Square.prototype.setSize = function(size)
{
    this.size = size;
};

Square.prototype.setColor = function(color)
{
    this.color = color;
};

Square.prototype.getSize = function()
{
   return this.size; 
};

Square.prototype.getColor = function()
{
    return this.color;
};

Square.prototype.setPosition = function(x, y)
{
    this.position.x = x;
    this.position.y= y;
};

Square.prototype.getPositionX = function()
{
    return this.position.x;
};

Square.prototype.getPositionY = function()
{
    return this.position.y;
};

Square.prototype.render = function(){

    return '<rect x="'+ this.position.x +'" y="'+ this.position.y +'" width="'+ this.size +'" height="'+ this.size +'" fill="'+ this.color +'" />'
}

Square.prototype.draw = function(tagSVGSelector){
  
    var tagSVGElement = document.querySelector(tagSVGSelector);
    
    if(tagSVGElement != null){
     
      tagSVGElement.innerHTML +=  this.render();
    }

}


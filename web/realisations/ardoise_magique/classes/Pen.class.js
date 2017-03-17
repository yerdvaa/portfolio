'use strict';

// définition de la classe Pen
	var Pen = function()
	{
		this.color = 'black';
		this.size  = 5;
	};

// définition des méthodes
	Pen.prototype.setColor = function(color)
	{
		this.color = color;
	};

	Pen.prototype.setSize = function(size)
	{
		this.size = size;
	};

	Pen.prototype.configure = function(context)
	{
		context.strokeStyle = this.color;
		context.lineWidth = this.size;
		context.stroke();
	};

	Pen.prototype.setColorAsRgb = function(red, green, blue)
	{
		this.color = 'rgb(' + red + ',' + green + ',' + blue + ')';
	};
'use strict';

// définition de la classe ColorPalette
	var ColorPalette = function()
	{
		this.canvas		 = document.querySelector('.palette');
		this.context 	 = this.canvas.getContext('2d');
		this.createColorPalette();
		this.currentLocation = null;
		this.pickedColor = 
		{
			red: 0,
			green: 0,
			blue: 0
		};
		$('.palette').on('click', this.onGetColor.bind(this));
	};

ColorPalette.prototype.createColorPalette= function()
{
	var canvasWidthX = this.canvas.width;
	var canvasHeightY = this.canvas.height;
	var gradient = this.context.createLinearGradient(0,0, canvasWidthX, 0);
	var gradient2 = this.context.createLinearGradient(0,canvasHeightY, 0, 0);
	// dégradé de couleurs
	gradient.addColorStop(0		,'rgb(255 ,0   ,0)');
	gradient.addColorStop(0.17	,'rgb(255 ,255 ,0)');
	gradient.addColorStop(0.30	,'rgb(0	  ,255 ,0)');
	gradient.addColorStop(0.45	,'rgb(0	  ,255 ,255)');
	gradient.addColorStop(0.60	,'rgb(0	  ,0   ,255)');
	gradient.addColorStop(0.85	,'rgb(255 ,0   ,255)');
	gradient.addColorStop(1		,'rgb(255 ,0   ,0)');
	this.context.fillStyle = gradient;
	this.context.fillRect(0,0,canvasWidthX, canvasHeightY);

	// transparence
	gradient2.addColorStop(0	,'rgba(0	,0	 ,0		,1)');
	gradient2.addColorStop(0.5	,'rgba(0	,0	 ,0		,0)');
	gradient2.addColorStop(0.5	,'rgba(255	,255 ,255	,0)');
	gradient2.addColorStop(1	,'rgba(255	,255 ,255	,1)');
	this.context.fillStyle = gradient2;
	this.context.fillRect(0,0,canvasWidthX, canvasHeightY);
};

ColorPalette.prototype.getMouseLocation = function(event)
	{
		var rectangle = this.canvas.getBoundingClientRect();
		var coords;
		var borderTop;
		var borderLeft;

		borderTop = getComputedStyle(this.canvas, null).getPropertyValue('border-top-width');
		borderTop = parseInt(borderTop);

		borderLeft = getComputedStyle(this.canvas, null).getPropertyValue('border-left-width');
		borderLeft = parseInt(borderLeft);

		coords =
			{
				x: event.clientX - rectangle.left - borderLeft,
				y: event.clientY - rectangle.top - borderTop
			};
			console.log(coords);
		return coords;
	};

ColorPalette.prototype.onGetColor = function(event)
	{
		var color;
		
		this.currentLocation = this.getMouseLocation(event);
		color = this.context.getImageData(this.currentLocation.x,this.currentLocation.y,1,1);
		console.log(color.data);

		this.pickedColor.red = color.data[0];
		this.pickedColor.green = color.data[1];
		this.pickedColor.blue = color.data[2];

		$.event.trigger('magical-slate:pick-color');
	};

	ColorPalette.prototype.getPickedColor = function()
	{
		return this.pickedColor;
	}
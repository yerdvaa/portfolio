'use strict';

// définition de la classe Slate
	var Slate = function(pen)
	{
		this.canvas			 = document.getElementById('canvas');
		this.context 	 	 = this.canvas.getContext('2d');
		this.currentLocation = null;
		this.isDrawing		 = false;
		this.pen 			 = pen;
		this.canvas.addEventListener('mousedown', this.onMouseDown.bind(this));
		this.canvas.addEventListener('mousemove', this.onMouseMove.bind(this));
		this.canvas.addEventListener('mouseup', this.onMouseUp.bind(this));
		this.canvas.addEventListener('mouseleave', this.onMouseLeave.bind(this));
	};

// définition des méthodes
	Slate.prototype.onMouseMove = function(event)
	{
		if(this.isDrawing == true)
			{
				this.context.beginPath();
 				this.context.moveTo(this.currentLocation.x,this.currentLocation.y);
 				this.currentLocation = this.getMouseLocation(event);
 				this.context.lineTo(this.currentLocation.x,this.currentLocation.y);
 				this.context.lineCap = 'round';
 				this.pen.configure(this.context);
 				this.context.closePath();
			}
	};

	Slate.prototype.onMouseDown = function(event)
	{
		this.currentLocation = this.getMouseLocation(event);
		this.isDrawing = true;
	};

	Slate.prototype.onMouseUp = function(event)
	{
		this.isDrawing = false;
	};

	Slate.prototype.onMouseLeave = function(event)
	{
		this.isDrawing = false;
	};

	Slate.prototype.getMouseLocation = function(event)
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

	Slate.prototype.onClickClear = function(event)
	{
		var canvasWidth = this.canvas.width;
		var canvasHeight = this.canvas.height;
		this.context.clearRect(0,0,canvasWidth,canvasHeight);

	};

	
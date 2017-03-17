'use strict';

// définition de la classe Program
	var Program = function()
	{
		this.pen 			= new Pen();
		this.slate  		= new Slate(this.pen);
		this.colorPalette 	= new ColorPalette();
	};

// définition des méthodes
	Program.prototype.onClickPenColor = function(event)
	{
		var buttonColor;
		var penColor;

		buttonColor = event.currentTarget;
		penColor = buttonColor.dataset.color;

		this.pen.setColor(penColor);
		console.log(penColor);
	};

	Program.prototype.onClickPenSize = function(event)
	{
		var buttonSize;
		var penSize;

		buttonSize = event.currentTarget;
		penSize = buttonSize.dataset.size;

		this.pen.setSize(penSize);
		console.log(penSize);
	};

	Program.prototype.show = function()
	{
		$('.palette').fadeIn(1200,'linear');
	}

	Program.prototype.onPickColor = function()
	{
		var color;
		color = this.colorPalette.getPickedColor();
		this.pen.setColorAsRgb(color.red, color.green, color.blue);
		$('.palette').fadeOut('slow');
	}

	Program.prototype.useTampon = function()
	{
		var tampon;
		tampon = this.tampon;
		console.log('toto');
	}


	Program.prototype.start = function()
	{
		// gestionnaire evenement bouton COULEUR
		$('.color').on('click', this.onClickPenColor.bind(this));
	
		// gestionnaire evenement bouton SIZE
		$('.size').on('click', this.onClickPenSize.bind(this));
		// gestionnaire evenement pour la gomme
		$('.gomme').on('click', this.slate.onClickClear.bind(this.slate));
		//gestionnaire evenement pipette
		$('.pipette').on('click', this.show);
		$(document).on('magical-slate:pick-color', this.onPickColor.bind(this));

		// gestionnaire évenement tampon
		$('#tampon').on('click', this.useTampon.bind(this));

	};



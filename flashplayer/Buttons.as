﻿package {	import flash.filters.GlowFilter;	import flash.filters.DropShadowFilter;	import flash.display.*;	import flash.geom.Matrix;	import flash.text.*;	import flash.events.MouseEvent;	public class Buttons {		private static function createButton(txt:String, btnW:Number, btnH:Number, txtx:Number, txty:Number, fontsize:Number) {			var radius:Number = 24;			var web20Glow:GlowFilter = new GlowFilter(0x668CFE, 100, 6, 6, 3, 3, true, false);			var web20Filters:Array = [web20Glow];			var myButton:MovieClip = new MovieClip();			var fillType = GradientType.LINEAR;			//var colors:Array = [0xF69C46, 0xEF5A2B];			var colors:Array = [0x8A88FC, 0x2B28EB];			var alphas:Array = [100, 100];			var ratios:Array = [0, 245];			var matrix:Matrix = new Matrix();			matrix.createGradientBox(btnW, btnH, 90/180*Math.PI, 0, 0);			var buttonBkg:Shape = new Shape();			myButton.addChild(buttonBkg);			with (buttonBkg.graphics) {				lineStyle(0, 0xE88A41, 100, true, "none", "square", "round");				beginGradientFill(fillType, colors, alphas, ratios, matrix);				moveTo(radius, 0);				lineTo((btnW-radius), 0);				curveTo(btnW, 0, btnW, radius);				lineTo(btnW, (btnH-radius));				curveTo(btnW, btnH, (btnW-radius), btnH);				lineTo(radius, btnH);				curveTo(0, btnH, 0, (btnH-radius));				lineTo(0, radius);				curveTo(0, 0, radius, 0);				endFill();			}			var shineRadius:Number = 16;			var shineW = btnW - 16;			var shineH = btnH / 2.5;			var shineFillType = GradientType.LINEAR;			var shineColors:Array = [0xFFFFFF, 0xFFFFFF];			var shineAlphas:Array = [0.7, 0];			var shineRatios:Array = [0, 255];			var shineMatrix:Matrix = new Matrix();			shineMatrix.createGradientBox(shineW, shineH, 90/180*Math.PI, 0, 0);			var shine:Shape = new Shape();			myButton.addChild(shine);			shine.x = 8;			shine.y = 3;			with (shine.graphics) {				lineStyle(0, 0xFFFFFF, 0);				beginGradientFill(shineFillType, shineColors, shineAlphas, shineRatios, shineMatrix);				moveTo(shineRadius, 0);				lineTo((shineW-shineRadius), 0);				curveTo(shineW, 0, shineW, shineRadius);				lineTo(shineW, (shineH-shineRadius));				curveTo(shineW, shineH, (shineW-shineRadius), shineH);				lineTo(shineRadius, shineH);				curveTo(0, shineH, 0, (shineH-shineRadius));				lineTo(0, shineRadius);				curveTo(0, 0, shineRadius, 0);				endFill();			}			var myFormat:TextFormat = new TextFormat();			myFormat.font = "Arial";			myFormat.align = "center";			myFormat.size = fontsize;			myFormat.bold = false;			myFormat.color = 0xFFFFFF;									var labelText:TextField = new TextField();			labelText.x = txtx;			labelText.y = txty;			labelText.width = btnW - 60;			labelText.height = btnH - 30;			labelText.multiline = true;			labelText.wordWrap = true;			labelText.autoSize = TextFieldAutoSize.CENTER;			labelText.htmlText = txt;			labelText.selectable = false;			labelText.antiAliasType = flash.text.AntiAliasType.ADVANCED;			labelText.setTextFormat(myFormat);			var labelGlow:GlowFilter = new GlowFilter(0xFFFFFF, .30, 4, 4, 3, 3);			var labelFilters:Array = [labelGlow];			labelText.filters = labelFilters;			myButton.addChild(labelText);			buttonBkg.filters = web20Filters;			return myButton;		}						public static function createDownloadButton(txt:String) {			var btn:MovieClip = createButton(txt, 200, 70, 55, 23, 24);						var ic:Shape = new Shape();			btn.addChild(ic);			ic.x=30;			ic.y=23;			var triangleHeight = 10;			with (ic.graphics) {				lineStyle(1, 0xFFFFFF, 100, true, "normal", "none");				beginFill(0xFFFFFF);				drawRect(0, 0, 15, 20);				moveTo(-5, 20);				lineTo(20, 20);				lineTo(7, 30);				lineTo(-5, 20);				endFill();			}						var icGlow:GlowFilter = new GlowFilter(0xFFFFFF, .90, 4, 4, 3, 3, false, true);			var icFilters:Array = [icGlow];			ic.filters = icFilters;						return btn;		}				public static function createPremiumButton(premiumtxt:String, waittxt:String) {			var btn:MovieClip = createButton(premiumtxt, 350, 150, 30, 23, 18);						var myFormat:TextFormat = new TextFormat();			myFormat.font = "Arial";			myFormat.align = "center";			myFormat.size = 12;			myFormat.bold = false;			myFormat.color = 0xFFFFFF;									var labelText:TextField = new TextField();			labelText.x = 20;			labelText.y = 130;			labelText.width = 350 - 60;			labelText.height = 50;			labelText.multiline = true;			labelText.wordWrap = true;			labelText.autoSize = TextFieldAutoSize.CENTER;			labelText.htmlText = waittxt;			labelText.selectable = false;			labelText.antiAliasType = flash.text.AntiAliasType.ADVANCED;			labelText.setTextFormat(myFormat);			var labelGlow:GlowFilter = new GlowFilter(0xFFFFFF, .30, 4, 4, 3, 3);			var labelFilters:Array = [labelGlow];			labelText.filters = labelFilters;						btn.addChild(labelText);						return btn;		}				public static function createBasicButton(txt:String) {			var btn:MovieClip = createButton(txt, 200, 70, 35, 23, 24);								return btn;		}				public static function createRSSButton(txt:String) {			var btn:MovieClip = createButton(txt, 200, 70, 65, 23, 24);						var ic:Shape = new Shape();			btn.addChild(ic);			ic.x=30;			ic.y=23;			with (ic.graphics) {				lineStyle(5, 0xFFFFFF, 100, true, "normal", "none");				curveTo(26, 0, 26, 26);				moveTo(0, 9)				curveTo(17, 9, 17, 26);				moveTo(5, 21)				lineStyle(7, 0xFFFFFF, 100, true, "normal", "round");				lineTo(4, 21);			}						var icGlow:GlowFilter = new GlowFilter(0xFFFFFF, .30, 4, 4, 3, 3);			var icFilters:Array = [icGlow];			ic.filters = icFilters;						return btn;		}							}}
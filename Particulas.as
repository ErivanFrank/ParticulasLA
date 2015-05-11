package  
{
	import flash.display.MovieClip;
	import flash.events.Event;
	import Movimento;
	/**
	 * ...
	 * @author erivan
	 */
	public class Particulas extends MovieClip
	{
		public var pTotal:int = 80;
		public var aParticulas:Array = [];
		
		var velocidadeX	:Number;
		var velocidadeY	:Number;
		var friccao		:Number;
		
		public function Particulas() 
		{
			
			velocidadeX = 0;
			velocidadeY = 0;
			addEventListener(Event.ENTER_FRAME, anima);
			
		}
		
		public function anima(e:Event):void 
		{
			if (aParticulas.length < pTotal)
			{
				var objeto: bola = new bola();
				addChild(objeto);
			    objeto.velocidadeX  = Math.random() * 10 - 5;
				objeto.velocidadeY  = Math.random() * 10 - 5;
				objeto.x = stage.stageWidth / 2;
				objeto.y = stage.stageWidth / 2;
				aParticulas.push(objeto);	
				
				
			}
			for (var i:int = 0; i < aParticulas.length; i++) 
			{		
			
				
				aParticulas[i].atualizador();
				
				
			}
			
		}
		
		
	}

}
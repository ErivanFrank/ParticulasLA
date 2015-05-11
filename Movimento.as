package  
{
	import flash.display.*;
	/**
	 * ...
	 * @author erivan
	 */
	public class Movimento extends MovieClip
	{
		
		public var velocidadeX	:Number;
		public var velocidadeY	:Number;
		public var friccao		:Number;
		
		public function Movimento():void
		{
			velocidadeX = 2;
			velocidadeY = 2;
			
			
		}
		
		
		public function atualizador()
		{
			this.x += velocidadeX;
			this.y += velocidadeY;		
		}
		
	}

}
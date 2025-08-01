package package1

object Question09 {

  val tape: List[Char] = List('C', 'H', 'A', 'R')
  def turingStep(f:Char => Char,tape:List[Char], n:Int): List[Char] ={
    if(tape.isEmpty){
      return Nil
    }
    if(n == 0){
      return tape
    }
    else{
      return f(tape.head) :: turingStep(f,tape.tail, n-1)
    }
  }

  def f1(c: Char): Char = {
    return c.toLower
  }

  def main(args: Array[String]): Unit = {
    println(turingStep(f1, tape, 2))
    println(turingStep(f1, tape, 3))
    println(turingStep(f1, tape, 0))
    println(turingStep(f1, tape, 5))
  }
}

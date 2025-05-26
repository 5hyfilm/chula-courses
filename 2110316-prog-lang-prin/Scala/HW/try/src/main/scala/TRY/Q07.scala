package TRY

object Q07 {
  def myMap(f:Int => Int) (list:List[Int]) :List[Int] = {
    if (list.isEmpty) return Nil
    else myMap(f)(list)
  }
  def square(n:Int): Int ={
    return n*n
  }

  def main(args: Array[String]): Unit={
    println(myMap(square)(List(1,2,3,4,5)))
  }
}

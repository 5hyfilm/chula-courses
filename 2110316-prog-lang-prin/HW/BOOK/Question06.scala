package package1

object Question06 {

  def myFilter(f:Int => Boolean) (list:List[Int]) :List[Int] = {
    if(list.isEmpty){
      return Nil
    }
    if(f(list.head)){
      return list.head :: myFilter(f)(list.tail)
    }
    else{
      return myFilter(f)(list.tail)
    }
  }
  def isLessThan3(x: Int): Boolean = {
    x < 3
  }
  def main(args: Array[String]): Unit = {
    println(myFilter(x => x%2==0)(List(1,2,3,4,5)))
    println(myFilter(isLessThan3)(List(1,2,3,4,5)))
  }
}

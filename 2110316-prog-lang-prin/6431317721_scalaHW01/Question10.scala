package package1

object Question10 {

  def nextState(state: Int): Int = {
    if (state == 0) {
      return 1
    }
    else {
      return 0
    }
  }

  def alternateWithAcc(f1: (Int, Int) => Int, f2: (Int, Int) => Int, list: List[Int], state: Int, acc: Int): Int = {
    if(list.isEmpty){
      return acc
    }
    if(state == 0){
      return alternateWithAcc(f1,f2,list.tail,nextState(state),f1(acc,list.head))
    }
    else{
      return alternateWithAcc(f1,f2,list.tail,nextState(state),f2(acc,list.head))
    }
  }

  def alternate(f1: (Int, Int) => Int, f2: (Int, Int) => Int, list: List[Int]): Int = {
    if(list.isEmpty){
      return 0
    }
    else{
      return alternateWithAcc(f1,f2,list.tail,0,list.head)
    }
  }

  def sum(a: Int, b: Int): Int = {
    return a+b
  }

  def subtract(a: Int, b: Int): Int = {
    return a-b
  }

  def main(args: Array[String]): Unit = {
    println(alternate(sum, subtract, List()))
    println(alternate(sum, subtract, List(55)) )
    println(alternate(sum, subtract, List(1, 2)))
    println(alternate(sum, subtract, List(1, 2, 3)))
    println(alternate(sum, subtract, List(1, 2, 3, 4)))
    println(alternate(sum, _*_, List(1, 2, 3, 4))) //((1+2)*3)+4 = 13
  }
}

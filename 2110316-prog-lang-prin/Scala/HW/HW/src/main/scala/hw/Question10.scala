package hw

object Question10 {

  def toggleState(currentState: Int): Int = if (currentState == 0) 1 else 0

  def alternateHelper(func1: (Int, Int) => Int, func2: (Int, Int) => Int, inputList: List[Int], state: Int, accumulator: Int): Int = {
    if (inputList.isEmpty) return accumulator
    else {
      val updatedState = toggleState(state)
      val updatedAccumulator = if (state == 0) func1(accumulator, inputList.head) else func2(accumulator, inputList.head)
      alternateHelper(func1, func2, inputList.tail, updatedState, updatedAccumulator)
    }
  }

  def alternate(func1: (Int, Int) => Int, func2: (Int, Int) => Int, inputList: List[Int]): Int = {
    if (inputList.isEmpty) return 0
    else alternateHelper(func1, func2, inputList.tail, 0, inputList.head)
  }

  def sum(a: Int, b: Int): Int = {
    return a + b
  }

  def subtract(a: Int, b: Int): Int = {
    return a - b
  }

  def main(args: Array[String]): Unit = {
    println(alternate(sum, subtract, List()))
    println(alternate(sum, subtract, List(55)))
    println(alternate(sum, subtract, List(1, 2)))
    println(alternate(sum, subtract, List(1, 2, 3)))
    println(alternate(sum, subtract, List(1, 2, 3, 4)))
    println(alternate(sum, _ * _, List(1, 2, 3, 4)))
  }
}

package hw

object Question03 {
  val listNum1: List[Int] = List(1, 2, 4, 5)
  val listNum2: List[Int] = List()
  val listNum3: List[Int] = List(1, 2)
  val listNum4: List[Int] = List(4, 5)

  def subList(l1: List[Any], l2: List[Any]): Boolean = {
    if (l1.isEmpty) true
    else if (l1.length > l2.length) false
    else if (l1.head == l2.head) subList(l1.tail, l2.tail)
    else subList(l1, l2.tail)
  }

  def main(args: Array[String]): Unit = {
    println(subList(listNum1, listNum2))
    println(subList(listNum1, listNum3))
    println(subList(listNum2, listNum1))
    println(subList(listNum2, listNum3))
    println(subList(listNum3, listNum1))
    println(subList(listNum3, listNum2))
    println(subList(listNum3, listNum4))
    println(subList(listNum4, listNum1))
    println(subList(listNum1, listNum1))
  }
}

package HW

object Q03 {

  val listNum1: List[Int] = List(1, 2, 4, 5)
  val listNum2: List[Int] = List()
  val listNum3: List[Int] = List(1, 2)

  def member(x: Any, l: List[Any]): Boolean = {
    if (l.isEmpty) false
    else if (l.head == x) true
    else member(x, l.tail)
  }

  def subList(l1: List[Any], l2: List[Any]): Boolean = {
    if (l1.isEmpty) return true
    else if (!member(l1.head, l2)) return false
    else return subList(l1.tail, l2)
  }

  def main(args: Array[String]): Unit = {
    println(subList(listNum1, listNum2))
    println(subList(listNum1, listNum3))
    println(subList(listNum2, listNum1))
    println(subList(listNum2, listNum3))
    println(subList(listNum3, listNum1))
    println(subList(listNum3, listNum2))
  }
}

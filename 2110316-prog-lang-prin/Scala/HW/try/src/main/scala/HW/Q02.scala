package HW

object Q02 {

  val l1: List[Int] = List(1, 2, 3)
  val l2: List[Int] = List(4, 5, 6)
  val l3: List[Int] = List()
  val z: Int = 3

  def insertInOrder(x:Int, list:List[Int]):List[Int] ={
    if (list.isEmpty) return Nil
    else if (x <= list.head) return x :: list
    else list.head :: insertInOrder(x, list.tail)
  }
}

package hw

object Question02 {
  val listNum1: List[Int] = List(1, 2, 4, 5)
  val listNum2: List[Int] = List()
  val listNum3: List[Int] = List(1, 2)
  val listNum4: List[Int] = List(4, 5)
  val listNum5: List[Int] = List(1, 5, 7, 9)
  val z: Int = 3

  def insertInOrder(x: Int, list: List[Int]): List[Int] = {
    if (list.isEmpty || x <= list.head) x :: list
    else list.head :: insertInOrder(x, list.tail)
  }

  def main(args: Array[String]): Unit = {
    println(insertInOrder(z, listNum1))
    println(insertInOrder(z, listNum2))
    println(insertInOrder(z, listNum3))
    println(insertInOrder(z, listNum4))
    println(insertInOrder(z, listNum5))
  }
}

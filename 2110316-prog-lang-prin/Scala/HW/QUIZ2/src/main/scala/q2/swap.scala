package q2

object swap {
  def swapPair(l: List[Int]) : List[Int] ={
    if (l.isEmpty || l.length == 1) return l
    else{
      val x = l.head
      val y = l.tail.head
      val z = l.tail.tail
      return y :: x :: swapPair(z)
    }
  }

  def main(args: Array[String]): Unit = {
    val list4 = List(1, 2, 3, 4, 5)
    print(swapPair(list4))
  }

}

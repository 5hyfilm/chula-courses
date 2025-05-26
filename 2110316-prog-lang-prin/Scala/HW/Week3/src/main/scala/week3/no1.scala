package week3

object no1 {
  val myList: List[Int] = List()
  val listNum = List(1, 2, 3, 4, 5)
  val listStr: List[String] = List("John", "Robin", "Richard")

  def member(x: Any, l:List[Any]): Boolean ={
    if (l.isEmpty) return false
    if (l.head == x) return true
    member(x, l.tail)
  }

  def sorted(l: List[Int]): Boolean ={
    if (l.isEmpty || l.length == 1) return true
    return (l.head <= (l.tail).head)
  }

  def reverse(l: List[Any]): List[Any] = {
    if (l.isEmpty) return List()
    reverse(l.tail) ++ List(l.head)
  }

}

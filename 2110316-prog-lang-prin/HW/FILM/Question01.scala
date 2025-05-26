package hw

object Question01 {
  val listStr1: List[String] = List("AA", "BB", "CC", "DD")
  val listStr2: List[String] = List()
  val z: String = "abcdef"

  def insertATPosition(x:Any, pos: Int, l:List[Any]): List[Any] = {
    if (l.isEmpty) return Nil
    else if (pos <= 0) return x :: l
    else if (pos >= l.length) return l ++ List(x)
    else l.head :: insertATPosition(x, pos - 1, l.tail)
  }
  def main(args: Array[String]): Unit = {
    println(insertATPosition(z,3,listStr1))
    println(insertATPosition(z,1,listStr2))
  }
}

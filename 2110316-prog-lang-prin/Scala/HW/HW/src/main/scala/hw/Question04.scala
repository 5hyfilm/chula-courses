package hw

object Question04 {
  val listNum1: List[Int] = List(1, 2, 4, 5)
  val listNum2: List[Int] = List()
  val listNum3: List[Int] = List(1, 2, 1)
  val listNum4: List[Int] = List(1, 2, 3, 2, 1)
  val listNum5: List[Int] = List(5)

  def palindrome(list: List[Any]): Boolean = {
    if (list.isEmpty || list.length == 1) true
    else if (list.head != list.last) false
    else palindrome(list.tail.init)
  }

  def main(args: Array[String]): Unit = {
    println(palindrome(listNum1))
    println(palindrome(listNum2))
    println(palindrome(listNum3))
    println(palindrome(listNum4))
    println(palindrome(listNum5))
  }
}

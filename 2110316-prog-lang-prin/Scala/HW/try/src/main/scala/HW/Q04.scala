//package HW
//
//object Q04 {
//  val listNum1: List[Int] = List(1, 2, 4, 5)
//  val listNum2: List[Int] = List()
//  val listNum3: List[Int] = List(1, 2)
//  val listNum4: List[Int] = List(4, 5)
//  val listNum5: List[Int] = List(4, 5, 4)
//
//  def myReverse(l: List[Any]): List[Any]
//
//  def palindrome(list: List[Any]):Boolean ={
//    if (list.isEmpty || list.length == 1) return true
//    else if (list.head != list.last) return false
//    else palindrome((list.tail).init)
//  }
//
//  def main(args: Array[String]): Unit = {
//    println(palindrome(listNum1))
//    println(palindrome(listNum2))
//    println(palindrome(listNum3))
//    println(palindrome(listNum4))
//    println(palindrome(listNum5))
//  }
//}

//package TRY
//
//object Q04 {
//
//  def myReverse(l: List[Any]): List[Any ] ={
//    if (l.isEmpty) return Nil
//    else return myReverse(l.tail :: List(l.head))
//  }
//
//  def compare(l1: List[Int], l2: List[Int]) ={
//    if (l1.length != l2.length) return false
//    if (l1.isEmpty && l2.isEmpty) return true
//    if (l1.head == l2.head) return compare(l1.tail, l2.tail)
//    else return false
//  }
//
//  def palindrome(list: List[Any]):Boolean ={
//    return compare(list, myReverse(list))
//  }
//}

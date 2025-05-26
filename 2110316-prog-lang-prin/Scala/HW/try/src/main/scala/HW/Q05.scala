//package HW
//
//object Q05 {
//  def firstHalf(list: List[Int], n: Int): List[Int] ={
//    if (n<=0) return Nil
//    else (list.head :: firstHalf(list.tail, n-1))
//  }
//
//  def secondHalf(list: List[Int], n: Int): List[Int] ={
//    if (n<=0) return list
//    else (list.head :: firstHalf(list.tail, n-1))
//  }
//
//  def mix(l1: List[Int], l2: List[Int]): List[Int] ={
//    if (l1.isEmpty) return l2
//    else if (l2.isEmpty) return l1
//    else if (l1.head <= l2.head) return l1.head :: mix(l1.tail, l2)
//    else return l2.head :: mix(l2.tail, l1 )
//  }
//
//
//  def mergesort(list: List[Int]):List[Int] ={
//
//  }
//}

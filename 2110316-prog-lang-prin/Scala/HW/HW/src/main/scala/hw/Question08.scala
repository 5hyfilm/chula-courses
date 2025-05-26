package hw

object Question08 {

  def update(l2: List[Int], l1: List[Int]): List[Int] = {
    if (l2.isEmpty) {
      return l1
    }

    else if (l1.isEmpty) {
      return l2
    }

    if (l2.head < l1.head) {
      return List(l1.head) ++ update(l2.tail,l1.tail)
    }
    else {
      return List(l2.head) ++ update(l1.tail,l2.tail)
    }
  }

  def maxAllHelper(lists: List[List[Int]], acc: List[Int]): List[Int] = {
    if (lists.isEmpty) {
      return acc
    }
    else {
      return maxAllHelper(lists.tail, update(acc, lists.head))
    }
  }

  def maxAll(lists: List[List[Int]]): List[Int] = {
    return maxAllHelper(lists, List())
  }

  def main(args: Array[String]): Unit = {
    println(maxAll(List()))
    println(maxAll(List(List())))
    println(maxAll(List(List(1, 2, 3, 4, 8, 9), List(), List(4, 5), List(1, 2, 3, 5, 6, 10, 11))))
    println(maxAll(List(List(3, 4), List(1, 2, 3, 4, 51, 61), List(1, 2, 31, 41, 61, 51))))
    println(maxAll(List(List(1, 2, 3, 40, 5, 6), List(10, 2, 30, 4), List(1, 200), List(0, 0, 0, 0, 0, 0, 0, 0, 9))))
  }
}

package q2

object tt {
  def testList(f: (List[Int], List[Int]) => Boolean, list1: List[Int], list2: List[Int]): Boolean = {
    f(list1, list2)
  }

}

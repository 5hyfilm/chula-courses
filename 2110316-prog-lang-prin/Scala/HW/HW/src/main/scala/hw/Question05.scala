package package1

object Question05 {

  val listNum1: List[Int] = List(1, 2, 1, 3, 4)
  val listNum2: List[Int] = List(5, 6, 7, 8, 9)
  val listNum3: List[Int] = List(9, 8, 7, 6, 5, 4, 3, 2, 1)
  val listNum4: List[Int] = List()

  def firstHalf(l: List[Int],n: Int): List[Int] = {
    if(n <= 0){
      return  Nil
    }
    else{
      return l.head :: firstHalf(l.tail,n-1)
    }
  }

  def secondHalf(l: List[Int], n: Int): List[Int] = {
    if (n <= 0) {
      return l
    }
    else {
      return secondHalf(l.tail,n-1)
    }
  }

  def mix(l1: List[Int], l2: List[Int]): List[Int] = {
    if (l1.isEmpty) {
      return l2
    }
    if (l2.isEmpty) {
      return l1
    }
    if (l1.head <= l2.head) {
      return l1.head :: mix(l1.tail, l2)
    }
    else {
      return l2.head :: mix(l1, l2.tail)
    }
  }

  def mergesort(list: List[Int]): List[Int] = {
    if(list.isEmpty) return Nil
    if(list.length > 1){
      val m = (list.length+1)/2
      return mix(mergesort(firstHalf(list, m)), mergesort(secondHalf(list, m)))
    }
    else{
      return list
    }
  }

  def main(args: Array[String]): Unit = {
    println(mergesort(listNum1))
    println(mergesort(listNum2))
    println(mergesort(listNum3))
    println(mergesort(listNum4))
  }
}

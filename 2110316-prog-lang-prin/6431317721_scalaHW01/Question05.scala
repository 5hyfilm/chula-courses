package package1

object Question05 {

  val listNum1: List[Int] = List(5, 2, 1, 3, 4)
  val listNum2: List[Int] = List(1, 2, 3, 4, 5)
  val listNum3: List[Int] = List()
  val listNum4: List[Int] = List(8, 7, 6, 5, 4, 3, 2, 1)


  def getFirstHalf(l: List[Int],n: Int): List[Int] = { //n = (l.length+1)/2
    if(n <= 0){
      return  Nil
    }
    else{
      return l.head :: getFirstHalf(l.tail,n-1)
    }
  }

  def getSecondHalf(l: List[Int], n: Int): List[Int] = {
    if (n <= 0) {
      return l
    }
    else {
      return getSecondHalf(l.tail,n-1)
    }
  }

  def combine(l1: List[Int], l2: List[Int]): List[Int] = {
    if (l1.isEmpty) {
      return l2
    }
    if (l2.isEmpty) {
      return l1
    }
    if (l1.head <= l2.head) {
      return l1.head :: combine(l1.tail, l2)
    }
    else {
      return l2.head :: combine(l1, l2.tail)
    }
  }

  def mergesort(list: List[Int]): List[Int] = {
    if(list.length > 1){
      val m = (list.length+1)/2
      val f = mergesort(getFirstHalf(list,m))
      val s = mergesort(getSecondHalf(list,m))
      return combine(f,s)
    }
    else if((list.length == 1)){
      return list
    }
    else{
      return Nil
    }
  }

  def main(args: Array[String]): Unit = {
    println(mergesort(listNum1))
    println(mergesort(listNum2))
    println(mergesort(listNum3))
    println(mergesort(listNum4))
  }

}

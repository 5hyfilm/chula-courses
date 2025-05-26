package package1

object Question04 {
  val listNum1: List[Int] = List(1, 2, 4, 5)
  val listNum2: List[Int] = List()
  val listNum3: List[Int] = List(1, 2, 1)
  val listNum4: List[Int] = List(1, 2, 3, 2, 1)

  def myReverse(l: List[Any]): List[Any] = {
    if (l.isEmpty) Nil
    else myReverse(l.tail) ++ List(l.head)
  }

  def compare(l1: List[Any],l2: List[Any]): Boolean = {
    if(l1.length != l2.length){
      return false
    }
    if (l1.isEmpty && l2.isEmpty) {
      return true
    }
    if(l1.head == l2.head){
      return(compare(l1.tail,l2.tail))
    }
    else{
      return false
    }
  }

  def palindrome(list: List[Any]):Boolean ={
    return compare(list,myReverse(list))
  }
  def main(args: Array[String]): Unit = {
    println(palindrome(listNum1))
    println(palindrome(listNum2))
    println(palindrome(listNum3))
    println(palindrome(listNum4))
  }
}

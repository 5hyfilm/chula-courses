package package1

object Question02 {
  val listNum1: List[Int] = List(1,2,4,5)
  val listNum2: List[Int] = List()
  val listNum3: List[Int] = List(1,2)
  val listNum4: List[Int] = List(4,5)
  val s: Int = 3

  def insertInOrder(x:Int, list:List[Int]):List[Int] = {
    if (list.isEmpty) {
      return x :: Nil
    }
    if(x < list.head){
      return List(x) ++ list
    }
    else{
      return list.head :: insertInOrder(x,list.tail)
    }

  }

  def main(args: Array[String]): Unit = {
    println(insertInOrder(s, listNum1))
    println(insertInOrder(s, listNum2))
    println(insertInOrder(s, listNum3))
    println(insertInOrder(s, listNum4))
  }
}

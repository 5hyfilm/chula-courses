package TRY

object Q02 {
  def insertInOrder(x:Int, list:List[Int]):List[Int] ={
    if (list.isEmpty) return Nil
    if (x < list.head) return x :: list
    else return list.head :: insertInOrder(x, list.tail)
  }
}

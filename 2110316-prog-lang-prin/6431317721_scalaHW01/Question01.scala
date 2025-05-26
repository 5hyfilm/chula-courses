package package1

object Question01 {
  val listStr1: List[String] = List("John", "Robin", "Richard", "Robind")
  val listStr2: List[String] = List()
  val s: String = "abcdef"
  def insertATPosition(x:Any, pos: Int, l:List[Any]) : List[Any] = {
    if(l.isEmpty){
      if(pos == 0){
        return x :: Nil
      }
      else{
        return Nil
      }
    }
    else if(pos != 0){
      return l.head :: insertATPosition(x,pos-1,l.tail)
    }
    else {
      return x :: l.head :: insertATPosition(x,pos-1,l.tail)
    }
  }
  def main(args: Array[String]): Unit = {
    println(insertATPosition(s,2,listStr1))
    println(insertATPosition(s,0,listStr2))

//    val list: List[String] =  "John" :: "Robin" :: listStr1
//    println("John" :: "Robin" :: listStr1)
  }
}

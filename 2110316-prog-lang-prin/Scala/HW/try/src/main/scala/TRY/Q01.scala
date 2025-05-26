package TRY

object Q01 {
  def insertATPosition(x:Any, pos: Int, l:List[Any]) : List[Any] ={
    if (l.isEmpty) return Nil
    else return l.head :: insertATPosition(x, pos-1, l.tail)
  }
}

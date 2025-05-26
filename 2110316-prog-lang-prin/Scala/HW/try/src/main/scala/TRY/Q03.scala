package TRY

object Q03 {

  def member(n: Any, l: List[Any]): Boolean ={
    if (n == l.head) return true
    else member(n, l.tail)
  }

  def subList(l1:List[Any], l2:List[Any]):Boolean ={
    if (l1.isEmpty) return true
    else if (!member(l1.head, l2)) return false
    else return subList(l1.tail, l2)
  }
}

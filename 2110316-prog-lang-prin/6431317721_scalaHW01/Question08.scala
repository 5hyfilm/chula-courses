package package1

object Question08 {

  def updateMaxI(oldList:List[Int], newList:List[Int]) :List[Int] = {
    if(newList.isEmpty){
      return oldList
    }
    if(oldList.isEmpty){
      return newList
    }
    if(oldList.head < newList.head){
      return newList.head :: updateMaxI(oldList.tail,newList.tail)
    }
    else{
      return oldList.head :: updateMaxI(oldList.tail,newList.tail)
    }
  }

  def maxAll(lists:List[List[Int]]) :List[Int] = {
    def maxAllf(listsf:List[List[Int]],acc : List[Int]): List[Int] = {
      if(listsf.isEmpty){
        return acc
      }
      else{
        return maxAllf(listsf.tail,updateMaxI(acc,listsf.head))
      }
    }
    return maxAllf(lists,List())
  }

  def main(args: Array[String]): Unit = {
    println(maxAll(List()))
    println(maxAll(List(List())))
    println(maxAll(List(List(1, 2, 3, 4, 8, 9), List(), List(4, 5), List(1, 2, 3, 5, 6, 10, 11))))
    println(maxAll(List(List(3, 4), List(1, 2, 3, 4, 51, 61), List(1, 2, 31, 41, 61, 51))))
    println(maxAll(List(List(1, 2, 3, 40, 5, 6), List(10, 2, 30, 4), List(1, 200), List(0, 0, 0, 0, 0, 0, 0, 0, 9))))
  }
}

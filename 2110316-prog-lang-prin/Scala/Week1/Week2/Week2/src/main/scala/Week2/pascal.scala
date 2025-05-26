package Week2

object pascal {
  def pascal(c: Int, r: Int): Int ={
    if (c == 0) return 1
    else if (c == r) return 1
    else pascal (c-1, r-1) + pascal(c, r-1)
  }

  def main(args: Array[String]): Unit ={
    println(pascal(3, 7))
  }
}

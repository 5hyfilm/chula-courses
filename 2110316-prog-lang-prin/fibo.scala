package q2

object n1 {
  def genFibo(n: Int): List[Int] = {
    def genFiboHelper(n: Int, a: Int, b: Int, acc: List[Int]): List[Int] = {
      if (n <= 0) {
        acc
      } else {
        genFiboHelper(n - 1, b, a + b, acc ++ List(a))
      }
    }
    genFiboHelper(n, 0, 1, List())
  }

  def main(args: Array[String]): Unit = {
    println(genFibo(5))
  }
}

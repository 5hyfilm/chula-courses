package q2

object n3 {
  def addSpecial(x: Int, y: Int): Int => Int = {
    if (x + y <= 0) {
      (z: Int) => z + 10
    } else {
      (z: Int) => z - 10
    }
  }

}

package Week2

object product {
  def product(f: Int => Int)(a: Int, b: Int): Int ={
    if (a>b) 1
    else f(a) * product(f)(a+1, b)
  }

  def myFac(n: Int) ={

  }
}

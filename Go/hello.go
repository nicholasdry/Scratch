// go <executable> <source file>

package main

import "fmt"

func main() {

      // fmt.Println("Hello")

      // godoc fmt <Function>

      // var age int = 40 if you create variables you dont use, it will complain

      randNum := 1

      fmt.Println(randNum, " Hello")

      // constants require data type declaration
      const pi float64 = 3.14159

      // var (
      //       varA = 2
      //       varB = 3
      // )

      // name := "Nicholas Dry"
      // var name string = "Nicholas Dry"

      var name string = "Nicholas Dry"

      fmt.Println(name)

      // iterator
      i := 1

      for i <= 10 {
            fmt.Println(i)
            i++
      }

      for j := 0; j < 5; j++ {
            fmt.Println(j)
      }

      j := 5

      if j > 3 {
            fmt.Println("Hello")
      }

      // switch statements are the same as most languages

      // arrays

      var fav[5] float64

      for i := 0; i < 5; i++ {
            fav[i] = 1.2345424
            fmt.Printf("%.3f\n", fav[i])
      }

      for i, value := range fav {
            fmt.Println(i, ": ", value)
      }

      // Slicing

      numSlice := []int {5,4,3,2,1}

      numSlice2 := numSlice[3:5]

      // numSlice2 := numSlice[:2] start from zero index, go to end of array
      // numSlice2 := numSlice[2:] start from 2 and get rest of them

      fmt.Println("numSlice2[0] = ", numSlice2[0])

      for i, value := range numSlice2 {
            fmt.Println(i, ": ", value)
      }

      // Maps (Key -> value) Hash Table

      // mapName := make(map[<key type>] <value type>)
      presAge := make(map[string] int)

      // mapName[<key>] = <value>
      presAge["TheodoreRoosevelt"] = 42

      fmt.Println(presAge["TheodoreRoosevelt"])

      fmt.Println(len(presAge)) // returns the number of things inside of the maps

      presAge["JFK"] = 43

      // delete(<map name>, <key>)
      delete(presAge, "JFK")

      // Functions
      listNums := []float64{1,2,3,4,5}

      fmt.Println("Sum: ", add(listNums))

      num1, num2 := nextNum(5)

      fmt.Println(num1, num2)

      fmt.Println(subtractThem(1,2,3,4,5))

      // functions inside of functions (closures)

      num3 := 3

      // <func name> := func() <return type> {
      //
      // }
      doubleNum := func() int {
            // accessing local var in main since we are using a closure in main
            // but main cant access the variable outside of the closure, so we have
            // to return the value back into main
            num3 *= 2

            return num3
      }

      // similar to a pointer
      fmt.Println(doubleNum())
      fmt.Println(doubleNum())

      // We want printOne to printOne first, basically its done to allow you to finish
      // a function then come back to the deffered function to run it
      // defer printTwo()
      // printOne()

      fmt.Println(safeDiv(3,0))
      fmt.Println(safeDiv(4,2))

      demPanic()

      // Pointers - same function as in C
      x := 0

      changeVal(&x)

      fmt.Println(x)

      fmt.Println("Memory address of X: ", &x)

      // another way to initialize
      // y := new(int)

      rect := Rectangle{0,50,10,10}

      fmt.Println(rect.width)

      fmt.Println("Area of rect is: ", rect.area())

}

type Rectangle struct {
      leftX float64
      topY float64
      height float64
      width float64
}

func (rect *Rectangle) area() float64 {
      return rect.width * rect.height
}

func changeVal(x *int) {
      *x = 2
      fmt.Println("Memory address of X: ", &x)
}

// func <func name> (<parameter name> <parameter type>, .. ) <return type> {
//
// }
func add(numbers []float64) float64 {
      var toReturn float64 = 0
      for _, value := range numbers {
            toReturn += value
      }
      return toReturn
}

// Functions can return more than 1 value in Go
func nextNum(number int) (int, int) {
      return number+1, number+2
}

// Variatic functions accept indefinate amounts of values
func subtractThem(args ...int) int {
      toReturn := 0
      for _, values := range args {
            toReturn -= values
      }
      return toReturn
}

// Defer
func printOne(){ fmt.Println(1)}
func printTwo(){ fmt.Println(2)}

func safeDiv(num1, num2 int) int {

      // Error handling, similar to a try-catch block in java
      // if any error occurs during this function runtime,
      // the deffered function will be called
      // allows the program to continue running instead of stopping it completely
      defer func(){
            fmt.Println(recover())
      }()

      solution := num1 / num2
      return solution
}

// Panic
func demPanic() {
      defer func() {
            fmt.Println(recover())
      }()

      panic("Panic")
}

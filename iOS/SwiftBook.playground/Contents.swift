// Swift 2.2 Playground file

print("Hello, World!")

var myVariable = 42 // Variables can be changed later on.

myVariable = 50

let myConstant = 42 // Constants cannot be altered later on, the value is not needed at compile time but it can only be declared and assigned a value once.

let implicitInteger = 70 // Variables determine type based on the first value it has assigned to it.

let implicitDouble = 70.0

let explicitDouble: Double = 70 // However, if you simply want to declare the variable and not assign it, you can specify the type which you want it to have later on in the runtime of your program.

// Experiment 1:
let explicitFloat: Float = 4

// Type Limits
let maxInt32 = UInt32.max
let maxInt64 = UInt64.max

let minInt32 = UInt32.min
let minInt64 = UInt64.min

// Type conversions
let octalNumber = 0o125 // This implicitly will show as a decimal number
let intOctal = Int(octalNumber)
let hexNumber = 0xf345e
let binNumber = 0b1010011111100101010001

// Type Aliasing, which is similar to typedef in C, it carries over all members of the UInt.. family or whatever type it is chosen to be assigned to.
typealias bigNum = UInt64
let bigNumTest: bigNum = 564641351874353546

let label = "The width is "
let width = 94
let widthLabel = label + String(width)

// Experiment 2:
// If you remove the String() from line 22, it will provide you with an error thinking you want to concatenate two varying types.

let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."
let orangeSummary = "I have \(oranges) oranges."

// Experiment 3:
let floatExperiment: Float = 4.9
let floatString = "The number is \(floatExperiment)."

let myName = "Nicholas Dry"
let helloMe = "Hello, \(myName)."

// Tuples are values which can not be changed once they are assigned at compile time. Tuples are particularly useful when you are returning values from a function, because then those computed values cannot be changed.

let http = ("Error Code", "Error Number")

// Tuples allow you to access values by .index_number
let http404error = (404, "Not Found")
print("The error is: \(http404error.0).") // The error is: 404.
print("The error is: \(http404error.1).") // The error is: Not Found.

// Tuples can also have their values assigned a key.
let http200error = (statusCode: 400, description: "Ok")
print(http200error.statusCode)
print(http200error.description)

// Arrays and Dictionaries

var shoppingList = ["catfish", "water", "tulips", "blue paint"]
shoppingList[1] = "bottle of water"

var occupations = [
        "Malcom": "Captain",
        "Kaylee": "Mechanic"
]

// This adds something new to the dictionary of occupations.
occupations["Jayne"] = "Public Relations"

let emptyArray = [String]()
let emptyDictionary = [String: Float]() // This shows that we are using a String for a key, and a float for the value linked to that key.

// Control Flow

let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0

for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}

print(teamScore)

// Optionals are good when converting a string into a possible number.

let possibleNumber = "123"
if let actualNumber = Int(possibleNumber) { // Since the value upon conversion is not nil, it allows us to use the temporary constant of actualNumber in the string below.
    print("\"\(possibleNumber)\" has an integer value of \(actualNumber).")
} else {
    print("\"\(possibleNumber)\" could not be converted to an integer.")
}

var optionalString: String? = "Hello"
print(optionalString == nil) // false

var optionalName: String? = "John Appleseed"
var greeting = "Hello"
if let name = optionalName {
    greeting = "Hello, \(name)"
}

// Experiment 4:

var optionalName2: String? = nil
var greeting3 = "Hello"
if let name = optionalName2 {
    greeting3 = "Hello, \(name)"
}

let nickName: String? = nil
let fullName: String = "John Appleseed"
let informalGreeting = "Hi \(nickName ?? fullName)"

// Error Throwing, if we have a function which might throw an error, we want to wrap that function call inside of a try..catch block.

func canThrowAnError() throws {
    
    // This function may or may not throw an error.
    
}

//try {
//    try canThrowAnError() // This might throw an error, but if it doesn't, any code immediately below it will execute.
//} catch {
//    // This will execute if the function call causes an error.
//}

let vegetable = "red pepper"
switch vegetable {
    case "celery":
        print("Add some raisins and make ants on a log.")
    case "cucumber", "watercress":
        print("That would make a good teas sandwich")
    case let x where x.hasSuffix("pepper"):
        print("Is it a spicy \(x)?")
    default:
        print("Everything tastes good in soup.")
}

// Experiment 5:
// Removing the default statement gives you the error of everything must be exhaustive, which means something must work for every situation you might encounter.

let interestingNumbers = [
    "Prime": [2,3,5,7,11,13],
    "Fibonacci": [1,1,2,3,5,8],
    "Square": [1,4,9,16,25]
]

var largest = 0
for (kind, numbers) in interestingNumbers { // This holds the iteration over the keys in the dictionary.
    for number in numbers { // This holds the iterations over the values inside of each of the keys.
        if number > largest {
            largest = number
        }
    }
}

print(largest)

// Experiment 6:
let interestingNumbersExp = [
    "Prime": [2,3,5,7,11,13],
    "Fibonacci": [1,1,2,3,5,8],
    "Square": [1,4,9,16,25]
]

var largestExp = 0
var type: String! // Mark this as needed because it will always have one value.
for (kind, numbers) in interestingNumbersExp { // This holds the iteration over the keys in the dictionary.
    for number in numbers { // This holds the iterations over the values inside of each of the keys.
        if number > largestExp {
            largestExp = number
            type = kind
        }
    }
}

print(largest, type)

var n = 2
while n < 100 {
    n = n * 2
}
print(n)

var m = 2
repeat {
    m = m * 2
} while m < 100

print(m)

var total = 0
for i in 0..<4 { // Geometric series.
    total += i
}
print(total)

// Functions and Closures

func greet(name: String, day: String) -> String {
    return "Hello \(name), today is \(day)."
}

greet("Nicholas", day: "Sunday")

// Returning multiple values

func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        sum += score
    }
    return (min, max, sum)
}

let statistics = calculateStatistics([5,3,100,3,9])
print(statistics.sum) // It knows the value which it is referencing since it is returning a tuple.
print(statistics.2) // This is a similar format of accessing as statistics[2].

// Variable parameter arguments.
func sumOf(numbers: Int...) -> Int {
    var sum = 0
    for number in numbers {
        sum += number
    }
    return sum
}

sumOf() // Since there are no numbers, their sum is implicitly 0, so the function works for it's edge case.
sumOf(45, 597, 12)

// Experiment 7:
func averageOf(numbers: Int...) -> Int {
    var total = 0
    var count: Int = 0
    for number in numbers {
        total += number
        count += 1
    }
    
    return total/count
}

// averageOf() This will cause an error since we will attempt to divide by zero, therefore we must add a base case to check our conditions.

func averageOfExp(numbers: Int...) -> Int {
    if numbers.count == 0 { // If this array has a size of 0, we know it has no elements, therefore the average will implicitly be 0.
        return 0
    }
    var total = 0
    var count: Int = 0
    for number in numbers {
        total += number
        count += 1
    }
    
    return total/count
}

averageOfExp()
averageOfExp(0,5,10)

// Nested Functions (Page 15)
func returnFifteen() -> Int { // Nested functions have access to values which lie outside of it's nexted scope, so it can be clean to build a function inside one another.
    var y = 10
    func add() {
        y += 5
    }
    add()
    
    return y
}
returnFifteen()

// Functions returning functions.

func makeIncrementer(inc: Int) -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return inc + number
    }
    return addOne
}

var increment = makeIncrementer(2)
increment(7)

// Function taking function as argument

func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}

func lessThanTen(number: Int) -> Bool {
    if number < 10 {
        return true
    }
    return false
}

var numbers = [20, 19, 7, 12]
hasAnyMatches(numbers, condition: lessThanTen)

numbers.map({
    (number: Int) -> Int in
    let result = number * 3
    return result
})

let mappedNumbers = numbers.map({number in 3 * number})
print(mappedNumbers)

// Classes and Objects

class NamedShape {
    var numberOfSides: Double = 0
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}

// Inheritance

class Square: NamedShape { // This is a square object, that inherits the NamedShape properties.
    
    var sideLength: Double
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4 // This value comes from the super class.
    }
    
    func area() -> Double {
        return sideLength * numberOfSides
    }
    
    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)."
    }
    
}

let test = Square(sideLength: 5.2, name: "My Test Square")
let area = test.area() // 20.8
test.simpleDescription()

// Experiment 8:

class Circle: NamedShape {
    
    var radius: Double
    
    init(radius: Double, name: String) {
        self.radius = radius
        super.init(name: name)
    }
    
    func area() -> Double {
        return 3.14 * (radius * radius)
    }
    
    override func simpleDescription() -> String {
        return "A circle with an area of \(area())."
    }
    
}

// Getters and Setters

class EquilateralTriangle: NamedShape {
    var sideLength: Double = 0.0
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
    }
    
    var perimeter: Double {
        get {
            return 3.0 * sideLength
        }
        set {
            sideLength = newValue / 3.0
        }
    }
    
    override func simpleDescription() -> String {
        return "An equilateral triangle with sides of length \(sideLength)."
    }
}

var triangle = EquilateralTriangle(sideLength: 3.1, name: "a triangle")
print(triangle.perimeter)
triangle.perimeter = 9.9
print(triangle.sideLength)

enum Rank: Int {
    case Ace = 1
    case Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten
    case Jack, Queen, King
    func simpleDescription() -> String {
        switch self {
        case .Ace:
            return "ace"
        case .Jack:
            return "jack"
        case .Queen:
            return "queen"
        case .King:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
}

let ace = Rank.Ace
let aceRawValue = ace.rawValue

// Experiment 9:

func compareRawValues(one: Rank, two: Rank) -> Bool {
    if one.rawValue == two.rawValue {
        return true
    }
    return false
}

let king = Rank.King
let queen = Rank.Queen

compareRawValues(king, two: queen)

























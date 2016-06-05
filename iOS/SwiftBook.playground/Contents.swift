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

// Optionals

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






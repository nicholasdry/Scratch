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








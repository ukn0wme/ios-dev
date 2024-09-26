//
//  main.swift
//  ass3
//
//  Created by Daniyal Nurgazinov on 27.09.2024.
//

import Foundation

// task 1, multiples of 3 and 5
for i in 1...100 {
    if i % 3 == 0 && i % 5 == 0 {
        print("FizzBuzz") // multiple of 3 and 5
    } else if i % 3 == 0 {
        print("Fizz") // multiple of 3
    } else if i % 5 == 0 {
        print("Buzz") // multiple of 5
    } else {
        print(i) // everything else
    }
}

//task 2
func isPrime(_ number: Int) -> Bool { // the function itself to check if its prime or nah
    if number < 2 {
        return false
    }
    for i in 2..<number {
        if number % i == 0 {
            return false
        }
    }
    return true
}

for i in 1...100 { // checking 0 to 100
    if isPrime(i) {
        print(i)
    }
}

// task3
func celsiusToFahrenheit(_ celsius: Double) -> Double {
    return (celsius * 9/5) + 32
}

func celsiusToKelvin(_ celsius: Double) -> Double {
    return celsius + 273.15
}

func fahrenheitToCelsius(_ fahrenheit: Double) -> Double {
    return (fahrenheit - 32) * 5/9
}

func fahrenheitToKelvin(_ fahrenheit: Double) -> Double {
    return (fahrenheit - 32) * 5/9 + 273.15
}

func kelvinToCelsius(_ kelvin: Double) -> Double {
    return kelvin - 273.15
}

func kelvinToFahrenheit(_ kelvin: Double) -> Double {
    return (kelvin - 273.15) * 9/5 + 32
}

// user input
print("Enter temperature value: ", terminator: "")
if let input = readLine(), let temp = Double(input) {
    print("Enter unit (C, F, or K): ", terminator: "")
    if let unit = readLine()?.uppercased() {
        switch unit {
        case "C":
            print("\(temp)°C is \(celsiusToFahrenheit(temp))°F and \(celsiusToKelvin(temp))K")
        case "F":
            print("\(temp)°F is \(fahrenheitToCelsius(temp))°C and \(fahrenheitToKelvin(temp))K")
        case "K":
            print("\(temp)K is \(kelvinToCelsius(temp))°C and \(kelvinToFahrenheit(temp))°F")
        default:
            print("Invalid unit")
        }
    }
} else {
    print("Invalid input")
}

// task 4

var shoppingList = [String]()

func showMenu() {
    print("""
    Menu:
    1. Add item
    2. Remove item
    3. View shopping list
    4. Exit
    """)
}

func addItem() {
    print("Enter item to add: ", terminator: "")
    if let item = readLine() {
        shoppingList.append(item)
        print("\(item) added to your shopping list.")
    }
}

func removeItem() {
    print("Enter item to remove: ", terminator: "")
    if let item = readLine(), let index = shoppingList.firstIndex(of: item) {
        shoppingList.remove(at: index)
        print("\(item) removed from your shopping list.")
    } else {
        print("Item not found.")
    }
}

func viewList() {
    print("Your shopping list:")
    for item in shoppingList {
        print("- \(item)")
    }
}

var isRunning = true

while isRunning {
    showMenu()
    print("Choose an option: ", terminator: "")
    if let choice = readLine() {
        switch choice {
        case "1":
            addItem()
        case "2":
            removeItem()
        case "3":
            viewList()
        case "4":
            print("Exiting...")
            isRunning = false
            break
        default:
            print("Invalid option")
        }
    }
}

// task 5

func wordFrequencyCounter(sentence: String) {
    var wordCount = [String: Int]()
    
    // remove punctuation and make the sentence lowercase
    let cleanSentence = sentence
        .lowercased()
        .components(separatedBy: CharacterSet.punctuationCharacters)
        .joined()
    
    // split the sentence into words
    let words = cleanSentence.components(separatedBy: " ")
    
    // count the frequency of each word
    for word in words {
        if word.isEmpty { continue }
        wordCount[word, default: 0] += 1
    }
    
    // display the frequencies
    for (word, count) in wordCount {
        print("\(word): \(count)")
    }
}

// prompt user for input
print("Enter a sentence: ", terminator: "")
if let sentence = readLine() {
    wordFrequencyCounter(sentence: sentence)
}

// task 6


// default fibbonaci
func fibonacci(_ n: Int) -> [Int] {
    if n <= 0 {
        return []
    } else if n == 1 {
        return [0]
    }
    
    var sequence = [0, 1]
    for i in 2..<n {
        let nextNumber = sequence[i - 1] + sequence[i - 2]
        sequence.append(nextNumber)
    }
    return sequence
}

// function calling
let n = 10
let fibSequence = fibonacci(n)
print("First \(n) numbers in Fibonacci sequence: \(fibSequence)")


// task 7

// student list and scores in dict
var studentScores: [String: Int] = [:]

func calculateAverage(scores: [Int]) -> Double {
    let total = scores.reduce(0, +)
    return Double(total) / Double(scores.count)
}

func findHighestAndLowest(scores: [Int]) -> (highest: Int, lowest: Int) {
    guard let highest = scores.max(), let lowest = scores.min() else {
        return (0, 0)
    }
    return (highest, lowest)
}

// input
func inputStudents() {
    while true {
        print("Enter student name (or type 'done' to finish): ", terminator: "")
        if let name = readLine(), name.lowercased() != "done" {
            print("Enter \(name)'s score: ", terminator: "")
            if let scoreInput = readLine(), let score = Int(scoreInput) {
                studentScores[name] = score
            } else {
                print("Invalid score. Please enter a valid integer.")
            }
        } else {
            break
        }
    }
}

// calculate
func calculateResults() {
    let scores = Array(studentScores.values)
    if scores.isEmpty {
        print("No students to display.")
        return
    }

    let average = calculateAverage(scores: scores)
    let (highest, lowest) = findHighestAndLowest(scores: scores)

    print("\n--- Results ---")
    for (name, score) in studentScores {
        let comparison = score >= Int(average) ? "above" : "below"
        print("\(name) scored \(score), which is \(comparison) the average.")
    }
    
    print("\nClass average: \(average)")
    print("Highest score: \(highest)")
    print("Lowest score: \(lowest)")
}

// just execute k
inputStudents()
calculateResults()


// task 9

func add(_ a: Double, _ b: Double) -> Double {
    return a + b
}

func subtract(_ a: Double, _ b: Double) -> Double {
    return a - b
}

func multiply(_ a: Double, _ b: Double) -> Double {
    return a * b
}

func divide(_ a: Double, _ b: Double) -> Double? {
    if b == 0 {
        print("Error: Division by zero is not allowed.")
        return nil
    }
    return a / b
}

var isActive = true

while isActive {
    // input request
    print("Enter the first number: ", terminator: "")
    guard let firstInput = readLine(), let firstNumber = Double(firstInput) else {
        print("Invalid input. Please enter a valid number.")
        continue
    }

    print("Enter the second number: ", terminator: "")
    guard let secondInput = readLine(), let secondNumber = Double(secondInput) else {
        print("Invalid input. Please enter a valid number.")
        continue
    }

    print("Choose an operation (+, -, *, /): ", terminator: "")
    if let operation = readLine() {
        var result: Double?

        switch operation {
        case "+":
            result = add(firstNumber, secondNumber)
        case "-":
            result = subtract(firstNumber, secondNumber)
        case "*":
            result = multiply(firstNumber, secondNumber)
        case "/":
            result = divide(firstNumber, secondNumber)
        default:
            print("Invalid operation.")
            continue
        }

        if let result = result {
            print("Result: \(result)")
        }
    }

    // continue
    print("Do you want to perform another calculation? (yes/no): ", terminator: "")
    if let continueInput = readLine(), continueInput.lowercased() != "yes" {
        isActive = false
    }
}

print("Calculator exited.")

// task 10

func hasUniqueCharacters(_ text: String) -> Bool {
    var characterSet = Set<Character>()
    
    // each char check
    for char in text {
        // inside - not unique
        if characterSet.contains(char) {
            return false
        }
        // if not then it's ok add to set
        characterSet.insert(char)
    }
    return true
}
// user input
print("Enter a string to check for unique characters: ", terminator: "")
if let input = readLine() {
    if hasUniqueCharacters(input) {
        print("The string '\(input)' has all unique characters.")
    } else {
        print("The string '\(input)' does not have all unique characters.")
    }
}


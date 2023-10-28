import UIKit

func greet(person: String, day: String) -> String {
    return "Hello \(person) today is \(day)"
}

greet(person: "Mahesh", day: "Saturday")

func greet(_ person: String, special: String) -> String {
    return "Hello \(person) today's lunch special is \(special)"
}

greet("Mahesh", special: "Ice Cream")


func greet(person: String, from hometown: String) -> String {
    return "Hello \(person) whose hometown is: \(hometown)"
}

greet(person: "Mahesh", from: "Nanded")


func greet(to person: String, from hometown: String) -> String {
    return "Hello \(person) whose hometown is \(hometown)"
}

greet(to: "Mahesh", from: "Nanded")


func someFunction(parameterWithoutDefaultValue: Int, parameterWithDefaultValue: Int = 4) -> Int {
    return parameterWithoutDefaultValue + parameterWithDefaultValue
}

someFunction(parameterWithoutDefaultValue: 10)
someFunction(parameterWithoutDefaultValue: 10, parameterWithDefaultValue: 10)


func addTwoNumbers(_ a: Int, _ b: Int) -> Int {
    return a+b
}

var closure: (Int, Int) -> Int = addTwoNumbers

closure(3,4)

func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}

func lessThanTen(number: Int) -> Bool {
    return number >= 1 && number <= 10
}

let list = [20,19,77,78]

hasAnyMatches(list: list, condition: lessThanTen)

// Minimum number
func min(_ number1: Int, _ number2: Int) -> Int {
    return number1 < number2 ? number1 : number2
}

min(1, 4)

// Return Last Digit
func lastDigit(_ number: Int) -> Int {
    return number%10
}

lastDigit(12345)

// Print array
func first(_ number: Int) -> [Int] {
    var arr = [Int] ()
    for item in 1...number {
        arr.append(item)
    }
    return arr
}

first(3)

// Reverse Array
func reverse(_ array: [Int]) -> [Int] {
    var newArray = array
    var start = 0, end = newArray.count-1;
    
    while(start < end) {
        newArray.swapAt(start, end)
        start = start+1
        end = end-1
    }
    return newArray
}

print(reverse([1,2,3,4,5]))

// Sum of array element

func sum(of numbers: [Int]) -> Int {
    var sum = 0
    
    for number in numbers {
        sum = sum + number
    }
    return sum
}

sum(of: [1,2,3,4,5,6,7,8,9,10])

import UIKit

var greeting = "Hello, playground"

func greet(_ name: String) {
    print(name)
}

greet("Hello")

func increaseVolume(for device: String) -> String {
    return "\(device) is now louder"
}

increaseVolume(for: "Song")


func square(of number: Int...) {
    for num in number {
        print(num*num)
    }
}

square(of: 1,2,3,4,5,6,7,8,9,10)


enum PassWordError: Error {
    case obivious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PassWordError.obivious
    }
    return true
}

do {
    try checkPassword("passeword")
    print("password is good")
} catch {
    print("Password not good")
}

func number(num: inout Int) {
    num = num + 2;
    print(num)
}

var myNum = 8

number(num: &myNum)

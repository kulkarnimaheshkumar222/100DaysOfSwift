import UIKit

var greeting = "Hello, playground"

var clos = {
    print("Hello")
}

clos()

func printClos(completion:() -> Void) {
    completion()
}

printClos(completion: clos)
printClos {
    clos()
}

var hello: () -> (String) = {
    return "Hello Mahesh"
}
 
hello()

var square: (Int) -> (Int) = { (input: Int) in
    return input * input
}

square(4)

var arr = ["Ewa", "Alex", "Chris", "Barry", "Daniella"]

func shortEle(first: String, second: String) -> Bool {
    return first.count > second.count
}

var shortElementClos: (String, String) -> Bool = { (first: String, second: String) -> Bool in
    first.count > second.count
}

//var resultArr = arr.sorted {(first: String, second: String) -> Bool in
//    return first.count > second.count
//}

var resultArr = arr.sorted(by: shortEle)
print(resultArr)

func makeIncrement(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0
    func incrementor() -> Int {
        runningTotal = runningTotal+amount
        return runningTotal
    }
    return incrementor
}

var incrementByTen = makeIncrement(forIncrement: 10)
incrementByTen()
incrementByTen()
incrementByTen()

var incrBy102 = incrementByTen
incrBy102()

import UIKit

var greeting = "Hello, playground"

let count = 1...10

for number in count {
    print("Number is \(number)")
}

var number = 1

while number <= 20 {
    number = number+1
}

print("Ready or not")

repeat {
    print("This is false")
} while false


var num = 0
            
while num <= 10 {
    num+=1
    if num == 9 {
        print("Break condition")
        break
    }
}

for i in 0...10 {
    if i%2 == 0 {
        continue
    }
    print(i)
}

var counting = 0
while counting <= 20 {
    counting += 1
    if counting > 5 {
        continue
    }
    print("\(counting)...")
}
print("Ready or not, here I come!")

import UIKit

//Array
var name1 = "Mahesh"
var name2 = "Suresh"

var array = [name1,name2]

//Set

var colors = Set(["red","blue","White","blue"])

//Tuple

var tuple = (first: 12, second: "Two", three: 56.3)
tuple.0
tuple.1
tuple.2
tuple.first
tuple.second
tuple.three

tuple.0 = 100
tuple.0

//Dictionary

var students = [
    "One":1,
    "Two":2
]
students["One"] = 34
students["One8",default: 21]

var array1 = Array<Int>()
array1.append(12)

var dic = Dictionary<String, Int>()
dic["One"] = 1

var set = Set<Int>()
set.insert(12)

class MyClass {
    var name = "Mahesh"
}

var array2 = Array<MyClass>()

array2.append(MyClass())

//Enumeration

enum Result {
    case success
    case failure
}

let result = Result.success

enum Activity {
    case singing(name: String)
    case walking(destination: String)
}

var singing = Activity.singing(name: "Song")
var walking = Activity.walking(destination: "Nanded")

enum WeekDays: Int {
    case sunday
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
}

var saturday = WeekDays.saturday.rawValue

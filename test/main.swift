//
//  main.swift
//  test
//
//  Created by JeongHwan Seok on 2020/11/12.
//

import Swift

let constant: String = "차후에 변경 불가능한 상수"
var variable: String = "차후에 변경 가능한 변수"

variable = "변수 변경"

let sum: Int
let inputA: Int = 100
let inputB: Int = 200

sum = inputA + inputB
print(sum)

var nickName: String

nickName = "bye9"
print(nickName)
nickName = "bye1"
print(nickName)
//2data type

var someBool: Bool = true
someBool = false

var someInt: Int = -100

var someUInt: UInt = 100

var someFloat: Float = 3.14

var someDouble: Double = 3.14
//someDouble = someFloat

var someCharacter: Character = "h"

var someString: String = "하하하"
someString = someString + "웃어요!"
print(someString)
//someString = someCharacter

let integer = 100
print(type(of: integer))
let floatingPoint = 12.34
print(type(of: floatingPoint))
let apple = "A"
print(type(of: apple))

//3any,nil
var someAny: Any = 100
someAny = "어떤 타입도 수용 가능"
someAny = 123.12

//let someDouble: Double = someAny
class SomeClass {}
var someAnyObject: AnyObject = SomeClass()
//someAnyObject = 123.12
//someAny = nil


//4array
var integers: Array<Int> = Array<Int>()
integers.append(1)
integers.append(100)
//integers.append(101.1)

print(integers.contains(100))
print(integers.contains(99))

integers.remove(at: 0)
integers.removeLast()
integers.removeAll()

print(integers.count)

var doubles: Array<Double> = [Double]()
var strings: [String] = [String]()
var characters: [Character] = []

let immutableArray = [1, 2, 3]

//key, value
var anyDictionary: Dictionary<String, Any> = [String: Any]()
anyDictionary["someKey"] = "value"
anyDictionary["anotherKey"] = 100
print(anyDictionary)
anyDictionary["someKey"] = "dictionary"

anyDictionary.removeValue(forKey: "anotherKey")
anyDictionary["someKey"] = nil
print(anyDictionary)

let emptyDictionary: [String: String] = [:]
let initalizedDictionary: [String: String] = ["name": "jeonghwan", "gender": "male"]
//불확실성 let someValue: String = initalizedDictionary["name"]

var integerSet: Set<Int> = Set<Int>()
integerSet.insert(1)
integerSet.insert(100)
integerSet.insert(99)
integerSet.insert(99)

print(integerSet.contains(1))
integerSet.remove(100)
integerSet.removeFirst()
print(integerSet.count)

let setA: Set<Int> = [1, 2, 3, 4, 5]
let setB: Set<Int> = [3, 4, 5, 6, 7]

let union: Set<Int> = setA.union(setB)
let sortedUnion: [Int] = union.sorted()
let intersection: Set<Int> = setA.intersection(setB) //교집합
let subtracting: Set<Int> = setA.subtracting(setB)  //차집합

//5function
func sum(a: Int, b: Int) -> Int {
    return a + b
}

func printMyName(name: String) -> Void {
    print(name)
}

func printYourName(name: String) {
    print(name)
}

func maximumIntegerValue() -> Int {
    return Int.max
}

print(sum(a: 3, b: 5))
printMyName(name: "jeonghwan")
printYourName(name: "hana")
print(maximumIntegerValue())

//8함수 고급
func greeting(friend: String, me: String = "bye9") {
    print("Hello \(friend)! I'm \(me)")
}

//매개변수 기본값을 가지는 매개변수는 생략 가능
greeting(friend: "hana") //Hello hana! I'm bye9
greeting(friend: "john", me: "eric")

//전달인자 레이블
//함수 내부 : 매개변수 이름 사용
func greeting(to friend: String, from me: String) {
    print("Hello \(friend)! I'm \(me)")
}
//함수 외부 : 전달 인자 레이블 사용
greeting(to: "hana", from: "bye9")

//가변 매개변수
func sayHelloToFriends(me: String, friends: String...) -> String {
    return "Hello \(friends)! I'm \(me)!"
}

print(sayHelloToFriends(me: "bye9", friends: "hana", "eric"))
print(sayHelloToFriends(me: "bye9"))

//데이터 타입으로서의 함수 사용 가능
var someFunction: (String, String) -> Void = greeting(to:from:)
someFunction("eric", "bye9")

someFunction = greeting(friend:me:)
someFunction("eirc", "bye9")

func runAnother(function: (String, String) -> Void) {
    function("jenny", "mike")
}

runAnother(function: greeting(friend:me:))
runAnother(function: someFunction)

//9조건문
let someInteger = 100

if someInteger < 100 {
    print("100미만")
} else if someInteger > 100 {
    print("100 초과")
} else {
    print("100")
}
//if someInteger {} 안대요. 항상 bool 타입

switch someInteger {
case 0:
    print("zero")
case 1..<100: //1이상 100미만
    print("1~99")
case 100:
    print("100")
case 101...Int.max: //101이상
    print("over 100")
default:
    print("unknown")
}

switch "bye9" {
case "jake", "john":
    print("jake")
    //fallthrough 자동으로 break걸리는걸 안걸리게
case "mina":
    print("mina")
case "bye9":
    print("bye9!!!")
default:
    print("unknown")
}

//10반복문
var integerss = [1, 2, 3]
let people = ["bye9": 10, "eric": 15, "mike": 12]

for integer in integerss {
    print(integer)
}

for (name, age) in people {
    print("\(name): \(age)")
}

while integerss.count > 1 {
    integerss.removeLast()
}

repeat {
    integerss.removeLast()
} while integerss.count > 0

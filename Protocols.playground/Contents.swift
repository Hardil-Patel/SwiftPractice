import Foundation

protocol CanBreathe {
    func breathe()
}

// The above snippet shows that even without any body or the implementation of logic in a function we can declare a function using protocol

// We call it interface in JAVA

// structure dont really allow inheritance but we can do it using protocol

struct Animal : CanBreathe {
    func breathe() {
        "Animal is breathing...."
    }
}

struct Person : CanBreathe {
    func breathe() {
        "Person is breathing...."
    }
}

let dog = Animal()
dog.breathe()

let foo = Person()
foo.breathe()

// Cannot create function body inside the protocol

//protocol canjump{
//    func jump(){
//        "jumping...."
//    }
//}

protocol canjump{
    func jump()
}

extension canjump{
    func jump(){
        "Jumping ... "
    }
}

struct cat : canjump {
    
}

let whiskers = cat()
whiskers.jump()

protocol HasName {
    var name : String {get}
    var age : Int {get set}
}

extension HasName {
    func describeMe(){
        "you are \(name) and \(age) years old"
    }
    mutating func increaseAge(){
        self.age += 1
    }
}

struct Dog: HasName {
    var name: String
    var age: Int
}

var woof = Dog(
    name: "woof",
    age: 20
)

woof.name
woof.age
// woof.age += 1
woof.age

woof.describeMe()
woof.increaseAge()
woof.age

protocol vehicle{
    var speed :  Int {get set}
    mutating func increaseSpeed (by value: Int)
}

extension vehicle {
    mutating func increaseSpeed(by value:Int){
        self.speed += value
    }
}

struct Bike: vehicle {
    var speed : Int
    init(){
        self.speed = 0
    }
}

var bike = Bike()
bike.speed
bike.increaseSpeed(by: 10)
bike.speed


// protocols ->> as Blueprints

// use of IS keyword to check whether object conforms to the protocol or not

func describe(obj: Any) {
    if obj is vehicle {
        "It conforms to vehicle "
    }else {
        "It does not conforms to vehicle"
    }
}

describe(obj: bike)

// use of AS keyword ->> it is used to promote any object to specific type

func increaseSpeedIfvehicle(obj: Any){
    if var vehicle  = obj as? vehicle{
        vehicle.speed
        vehicle.increaseSpeed(by: 20)
        vehicle.speed
    }else{
        "This was not a vehicle"
    }
}

increaseSpeedIfvehicle(obj: bike)

// here bike is an instance of structure BIke so the original speed of bike wont change on modifying it in any functions ....

bike.speed

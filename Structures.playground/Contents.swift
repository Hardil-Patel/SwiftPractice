import Foundation

struct person{
    let name: String
    let age: Int
}

let foo = person(
    name : "Foo",
    age : 10
)

///Dot notation

foo.name
foo.age

struct commodoreComputer{
    let name: String
    let mfg: String
    init (name: String){
        self.name = name
        self.mfg = "commodore"
    }
}

//let C64 = commodoreComputer(
//    name: "dats my c64",
//    mfg: "commodore"
//)
//
//let c128 = commodoreComputer(
//    name: "dats my c128",
//    mfg: "commodore"
//)

/// It have the same manufacturer so instead of repeating we will make a constructor

let c64 = commodoreComputer(name : "c64")
c64.name
c64.mfg

let c128 = commodoreComputer(name : "c128")
c128.name
c128.mfg

struct person2{
    let firstname: String
    let lastname: String
    //let fullname: String
    // we cannot write the statement below as at time of computing fullname - first and last names are not known
//    init (
//        firstname: String,
//        lastname: String
//    ) {
//        self.firstname = firstname
//        self.lastname = lastname
//        self.fullname = "\(firstname) \(lastname)"
//    }
    
    // So instead of using let we will use var then describe datatype and write the function inside it and enter the logic for same
    
    var fullname: String  {
        "\(firstname) \(lastname)"
    }
}

let foobar = person2(
    firstname: "Foo",
    lastname: "Bar"
)
foobar.firstname
foobar.lastname
foobar.fullname

// Mutating Structures

struct Car{
    var currentSpeed : Int
    mutating func drive(speed: Int){
        "Driving....."
        currentSpeed = speed
    }
}

let immutablecar = Car(currentSpeed: 20)
// immutablecar.drive(speed: 20)

var mutablecar = Car(currentSpeed: 30)
let copy = mutablecar
mutablecar.drive(speed: 10)
mutablecar.currentSpeed
copy.currentSpeed

// Structure cannot subclass other structure
// it means NO INHERITANCE

struct Bike{
    let mfg: String
    let currentSpeed: Int
    func copy(currentSpeed: Int) -> Bike{
        Bike(
            mfg: self.mfg,
            currentSpeed: currentSpeed
        )
    }
}

let bike1 = Bike(
    mfg: "Harley Davidson",
    currentSpeed: 12
)

let bike2 = bike1.copy(currentSpeed: 21)
bike1.currentSpeed
bike2.currentSpeed

// if we want to change the currentspeed of bike2 we have to have a function copy to do so

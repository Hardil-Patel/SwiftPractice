import Foundation

class Person{
    var name: String
    var age: Int
    
    init(
        name : String,
        age : Int
    ){
        self.name = name
        self.age = age
    }
    func increaseAge(){
        self.age += 1
    }
}

let foo = Person(
    name: "Foo",
    age: 20
)

foo.age
foo.increaseAge()
foo.age

// Classes are internally mutable as without changing the let of foo to var it has changed the age to 21

foo.age

let bar = foo

bar.age
bar.increaseAge()

bar.age
foo.age

// Here as bar is a copy of foo -- bar is referential to the foo so both refers to same memory .
// just because dat while increasinf the bar's age foo's age is also increased

// so we actually check if they are pointing to same memory or not
// uisng ===

if foo === bar {
    "They are pointing to the same memory"
}else{
    "They arent pointing to the same memory"
}

// Inheritance

class vehicle{
    func goVroom(){
        "Vroom Vroom ..Vroooommmmm...."
    }
}

class Car : vehicle {
    
}

let car = Car()
car.goVroom()

// We can set the private variable in the class

class Person2{
    private(set) var age: Int
    init(age: Int){
        self.age = age
    }
    func IncreaseAge(){
        self.age += 1
    }
}

let baz = Person2(age : 15)
baz.age

// before in classes we saw outside the classes also we can increase the age but it is not the case here as age is private variable here

// baz.age += 1 --- Gives an error

// designated init (initialzers)

class Tesla {
    let mfg = "Tesla"
    let model : String
    let year : Int
    
    init(){
        self.model = "X"
        self.year = 000
    }
    
    init(model: String ,year: Int){
        self.model = model
        self.year = year
    }
    
    convenience init(model: String){
        self.init(
            model: model,
        year: 2023
        )
    }
}

class TeslaModelY : Tesla {
    override init(){
        super.init(
            model : "Y",
            year: 111
        )
    }
}

let modelY = TeslaModelY()
modelY.model
modelY.year
modelY.mfg

let foobar = Person2(age: 20)
foobar.age

func doSomething(with person: Person2){
    person.IncreaseAge()
}

doSomething(with : foobar)
foobar.age

// de-initializers -- they are invoked automatically by swift whenever instnace of class is going out of the memory

class Myclass {
    init(){
        "Initialized"
    }
    
    func dosomething(){
        // empty
    }
    
    deinit{
        "Deinitialized "
    }
}

let myClosure = {
    let myclass = Myclass()
    myclass.dosomething()
}

myClosure()

import Foundation

extension Int{
    func plusTwo() -> Int{
        self+2
    }
}
let two = 2
two.plusTwo()


struct Person {
    let firstname : String
    let lastname : String
//    init (fullname){
//        "Not a correct synatx -> need extension for this"
//    }
}

extension Person{
    init (fullName: String){
        let components = fullName
            .components(separatedBy: " ")
        self.init(
            firstname: components.first ?? fullName,
            lastname: components.last ?? fullName
        )
    }
}

let person = Person(fullName: "foo bar")
person.firstname
person.lastname

protocol goesvroom{
    var vroomvalue: String {get}
    func vroom()->String
}

extension goesvroom{
    func vroom()->String{
        "\(self.vroomvalue) goes vroooom"
    }
}

struct car {
    let mfg: String
    let model: String
}

let modelx = car(
    mfg: "Tesla",
    model: "x"
)

extension car: goesvroom{
    var vroomvalue: String{
        "\(self.mfg) and model \(self.model)"
    }
}

modelx.vroom()

class mydouble{
    let value: Double
    init(value: Double){
        self.value=value
    }
}
extension mydouble{
    convenience init(){
        self.init(value: 100)
    }
}

let mYdouble = mydouble()
mYdouble.value

extension goesvroom{
    func goesvroomvroomEvenMore()->String{
        "\(self.vroomvalue) is vrooming even more"
    }
}

modelx.goesvroomvroomEvenMore()

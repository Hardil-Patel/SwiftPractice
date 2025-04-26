import Foundation

func noArguementsAndNoReturnValue(){
    "IDK what im doing"
}
noArguementsAndNoReturnValue()

func plustwo (value : Int) {
    let newvalue = value + 2
}
plustwo(value:30)
 
/// Double the value

func double (a: Int) {
    let doubledvalue = a * 2
}

double(a : 20)

func newplustwo(value : Int) -> Int{
    return value + 2
}
newplustwo(value:30)

func customAdd(
    value1: Int,
    value2: Int
) -> Int {
    return value1 + value2
}

let customAdded = customAdd(value1:12,value2:23)

func customMinus(
    lhs:Int,
    rhs:Int
)->Int{
    lhs-rhs
}

let customSubtract = customMinus(lhs:100,rhs:20)

///To just write the values of the parameter in fucntion use underscore _ before variable
/// give a space after underscore

func customMultiply(
    _ lhs:Int,
    _ rhs:Int
)->Int{
 lhs * rhs
}

let customProduct = customMultiply(2,3)

customAdd(value1:2,value2:2)

///learn about the @discardableresult


/// FUCTIONS CONTAINING THEIR OWN FUNCTIONS

func doSomethingComplicated(
    with a:Int
)->Int{
    func mainlogic(a:Int)->Int{
        a+2
    }
    return mainlogic(a:a*3)
}
doSomethingComplicated(with:20)

func getFullName(
    firstname: String = "Foo",
    lastname : String = "Bar"
)->String{
    "\(firstname) \(lastname)"
}

getFullName()
getFullName(firstname:"Bax")


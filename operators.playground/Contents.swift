import Foundation

let myage = 22
let yourage = 20

if myage > yourage {
    "I m older"
}else if myage < yourage {
    "I am younger"
}else {
    "were the same age"
}

let mydad = 30 + myage

let doublemyage = 2 * myage

/// Three types of operators
/// (unary = works with one value)

/// 1. unary prefix
let foo = !true

/// 2. unary postfix
let name = Optional("Hari")
type(of: name)
let UnaryPostfix = name!
type(of: UnaryPostfix)

/// 3. binary infix
let result = 1+2
let names = "foo" + " " + "bar"

/// Ternary operator

let age = 20;
///let message:String
///if age>=18 {
///message = "an adult"
///}
///else {
  ///  message = "yet to"
///}
///message

///Ternary Operator

///let message = CONDITION
/// ? VALUE IF CONDITION IS MET
///: VALUE IF CONDITION IS NOT MET

let message = age>=18
? "an adult"
: "yet to"

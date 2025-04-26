import Foundation

let myname = "vandad"
let myage = 20
let yourname = "Foo"
let yourage = 30

if myname == "vandad" {
    "your name is \(myname)"
}else {
    "oops,dats wrong"
}

if yourname == "vandad" {
    "i guessed tht right"
}else if yourname == "Foo" {
    "your name is foo"
}else {
    "i give up"
}

/// Basic Use and meaning of && and ||
/// -> && and || here have the same precedence
///complex use and example ....

if myname == "vandad"
    && myage == 23
    && yourname == "Foo"
    || yourage == 30 {
    "My name is vandad and my age is 20 and yourname is Foo ....OR.... your age is 30"
}

///CLOSURES

/// closures are the inline arguements given to the functions
///

import Foundation

//func add(
//    lhs: Int,
//    rhs: Int
//)->Int{
//    rhs+lhs
//}

/// Its basically an INLINE function


let add: (Int, Int)->Int = {
    (a:Int ,b:Int)->Int in
    a + b
}

add(2,3)

func customAdd(
    _ lhs: Int,
    _ rhs: Int,
    using function: (Int,Int)->Int
    )->Int{
        function(lhs,rhs)
    }

customAdd(
    20,
    30
){(lhs: Int,rhs: Int)->Int in
    lhs + rhs
}

///CLEAN UP THE CODE

customAdd(
    20,
    30
){(lhs,rhs) in
    lhs + rhs
}

/// can be written using dollar
/// $0 - means the value at index 0

customAdd(20, 30) { $0 + $1 }

///sorting

///Ascending

let ages = [20,30,10] ///array
ages.sorted(by: {(lhs:Int,rhs:Int) -> Bool in
    rhs>lhs
})

///Descending

let numbers = [20,30,10]
ages.sorted(by: {(lhs:Int,rhs:Int) -> Bool in
    lhs>rhs
})

///writing all the arguements in the sorted function itself is so complex so instead we will use the > and < operator for the same

let numericValues = [10,30,20,40,50]
numericValues.sorted(by: >)
numericValues.sorted(by: <)

///Inline closures -need to learn once more

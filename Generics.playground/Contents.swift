import Foundation

// Generics - it is used when we have to use the same function multiple times

let x = 10
let y = 20
let z = x + y

func performAdd(
    _ op: (Int,Int) -> Int,
    on lhs: Int,
    and rhs: Int
)->Int{
    op(lhs,rhs)
}

performAdd(+, on:10, and:20)
performAdd(-, on:20, and:10)
performAdd(*, on:10, and:20)
performAdd(/, on:20, and:10)

// If i need to have the datatype as double then we have to change the whole of function or need to make multiple functions like performInt , performDouble , performFloat etc.

// Numeric have both the int and double in it ...


// N is a generic of type numeric

func Perform<N: Numeric>(
    _ op: (N,N)->N,
    on lhs:N,
    and rhs:N
)->N{
    op(lhs,rhs)
}

Perform(+,on:10,and:20)
Perform(-,on:30,and:20)

let h = Perform(+, on:10.0 ,and:20)
h

// alternative way of writing the above generic

func Perform2<n>(
    _ op: (n,n)->n,
    on lhs:n,
    and rhs:n
)->n where n : Numeric{
    op(lhs,rhs)
}

//Perform2(+,on:10,and:20)
//Perform2(-,on:30,and:20)

Perform2(+,on:10.7,and:20)

protocol canjump{
    func jump()
}

protocol canrun{
    func run()
}

struct Person: canjump , canrun {
    func jump(){
        "Jumping..."
    }
    
    func run(){
        "Running..."
    }
}

func jumpandrun<T: canjump & canrun> (value: T) {
    value.jump()
    value.run()
}

let p = Person()
jumpandrun(value: p)

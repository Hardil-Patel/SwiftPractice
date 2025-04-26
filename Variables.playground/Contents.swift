import Foundation

let myname = "Hari"
let yourname = "manan"

var names = [myname,yourname]
names.append("Kush")
names.append("vishva")

let morenames = ["Foo","bar"]

var copy = morenames

copy.append("baz")
morenames
copy

let oldarray = NSMutableArray(array:["foo","bar"])

oldarray.add("baz")

var newarray = oldarray

newarray.add("Qux")

oldarray
newarray

let somenames = NSMutableArray(array:["foo","bar"])

func changearray(_array:NSArray){
    let copy = array as! NSMutableArray
    copy.add("Bazzz")
}

changearray(somenames)

somenames

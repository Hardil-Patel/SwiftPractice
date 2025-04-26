import Foundation

// Enumeration is a categorization of a similar data by a name

enum Animals {
    // case cat , dog, rabbit
    case cat
    case dog
    case rabbit
    
}

let cat = Animals.cat
cat

let dog = Animals.dog
dog

if cat == Animals.cat {
    "This is a cat"
}else if  cat == Animals.dog {
    "This is a dog"
}else if cat == Animals.rabbit{
    "This is a rabbit"
}else {
    "This is something else"
}

// Switch case statements

switch cat{
case .cat:
    "This is a cat"
    break
case .dog:
    "This is a dog"
    break
case .rabbit:
    "This is a rabbit"
    break
}

// if we add a new case in enum and we run the ' if else ' statement it will execute but switch case will not as it require to have all the new cases of enum added to the case of switch


// Enumerations having associated values

enum shortcut {
    case wwwUrl(path: URL)
    case fileOrFolder(path: URL, name: String)
    case song(artist: String , songname: String)
}

let wwwApple = shortcut.wwwUrl(
    path: URL(string : "https://apple.com")!
)

// different ways of using switch statements to call associated values in enum

// 1

switch wwwApple {
case .wwwUrl(
    path: let path
):
    path
    break
case .fileOrFolder(
    path: let path,
    name: let name
):
    path
    name
    break
case .song(
    artist: let artist,
    songname: let songname
):
    artist
    songname
    break
}


// 2

switch wwwApple {
case .wwwUrl(
    let path
):
    path
    break
case .fileOrFolder(
    let path,
    let name
):
    path
    name
    break
case .song(
    let artist,
    let songname
):
    artist
    songname
    break
}


// 3

switch wwwApple {
case let.wwwUrl(
    path
):
    path
    break
case let.fileOrFolder(
    path,
    name
):
    path
    name
    break
case let.song(
    artist,
    songname
):
    artist
    songname
    break
}

// using if case let here will give direct result if the case matches

// Pasted the URL

if case let .wwwUrl(path) = wwwApple{
    path
}

// case didn't matched - wont give any o/p

if case let .fileOrFolder(path,name) = wwwApple{
    path
    name
}

let AnotherLove = shortcut.song(
    artist: "Tom Odell",
    songname: "Another Love"
)

// when enum have same values (mfg)

enum vehicle{
    case car(mfg: String,model: String)
    case bike(mfg: String,Yearmade: Int)
}

// we can also just simply make a function for grabbing their values

func getmfg(from vehicle: vehicle)->String{
    switch car{
    case let.car(mfg,_):
        return mfg
        
    case let.bike(mfg,_):
        return mfg
        
    }
}


let car = vehicle.car(
    mfg: "Tesla",
    model: "Model 3"
)
getmfg(from: car)


// There is mfg for both so how to grab value of car mfg :-
switch car{
case let.car(mfg,_):
    mfg
    break
case let.bike(mfg,_):
    mfg
    break
}


let bike = vehicle.bike(
    mfg: "Harley",
    Yearmade: 2027
)

getmfg(from: bike)
// There is mfg for both so how to grab value of bike mfg :-

switch bike{
case let.car(mfg,_):
    mfg
    break
case let.bike(mfg,_):
    mfg
    break
}

//// we can also just simply make a function for grabbing their values
//
//func getmfg(from vehicle: vehicle)->String{
//    switch car{
//    case let.car(mfg,_):
//        return mfg
//        
//    case let.bike(mfg,_):
//        return mfg
//        
//    }
//}

enum familymember: String {
    case Father = "Daddie"
    case Mother = "Mommie"
    case Brother = "Browie"
    case Sister = "Sissy"
}

familymember.Father.rawValue
familymember.Mother.rawValue
familymember.Brother.rawValue
familymember.Sister.rawValue

enum favouriteEmoji: String, CaseIterable{
    case blush = "😊"
    case smile = "😁"
    case cry = "😭"
}

favouriteEmoji.blush
favouriteEmoji.blush.rawValue

favouriteEmoji.allCases
favouriteEmoji.allCases.map(\.rawValue)

// if you have case you can get value but is the vice versa true ?
// yes ... from emoji u can get instance


if let blush = favouriteEmoji(rawValue: "😊"){
    "Found the blush Emoji"
    blush
}else{
    "No Such Emoji Exist"
}


if let snow = favouriteEmoji(rawValue: "🥶"){
    "Snow Exists? "
    snow
}else{
    "No Such Emoji Exist"
}


//Mutating members of enum


enum Height{
    case short,long
    mutating func makeLong(){
        self = Height.long
    }
}


var myheight = Height.short
myheight.makeLong()
myheight

// Recursive enum

indirect enum IntOperation{
    case add(Int, Int)
    case subtract(Int, Int)
    case freehand(IntOperation)
    
    func calculateresult(
        of operation: IntOperation? = nil
    )->Int{
        switch operation ?? self{
        case let .add(a,b):
            return a+b
        case let .subtract(a,b):
            return a-b
        case let .freehand(operation):
            return calculateresult(of: operation)
        }
    }
    
}
var freehand = IntOperation.freehand(.add(2,4))
freehand.calculateresult()

var freehand1 = IntOperation.freehand(.add(2,3))
freehand1.calculateresult()

var freehand2 = IntOperation.freehand(.subtract(200,3))
freehand2.calculateresult()

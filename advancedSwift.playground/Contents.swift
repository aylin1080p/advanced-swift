import UIKit


// guard

func nameRecognition(name:String) {
   
    guard name == "Aylin" else{
        print("unknow person")
        return
    }
    print("Hi Aylin")
}

nameRecognition(name: "aylin")
nameRecognition(name: "Aylin")


func capitalize(str:String?){
    if let temp = str {
        print(temp.uppercased())
    }else {
        print( "str is nill")
        return
    }
    
}

capitalize(str: "aylin")

func capitalizeWithGuard (str:String?){
    guard let temp = str, temp.count>0 else {
        print("str is nill")
        return
    }
    print(temp.uppercased())
}

capitalizeWithGuard(str:"")


// try - catch yapısı

enum Error1:Error {
    
case divideByZeroError
}

func divideFunction (number1:Int, number2:Int)throws -> Int {
    if number2 == 0{
        throw Error1.divideByZeroError
    }
    return number1 / number2
    
}


do {
    let result1 = try divideFunction(number1: 4, number2: 0)
    print(result1)
} catch Error1.divideByZeroError {
    print("divided by zero ")
}

// thread

let queue = DispatchQueue(label: "sticker")
queue.sync {
    for i in 100...110 {
        print("Thread : \(i)")
    }
}

for i in 100...110 {
    print("main loop : \(i)")
}
 // we wanted to get them work at the same time


let queue2 = DispatchQueue(label: "sticker") // we will say Ascyn !!
queue.async {
    for i in 100...110 {
        print("Thread2 : \(i)")
    }
}

for i in 100...110 {
    print("main loop2 : \(i)")
}
// thread has a priority things you can choose one of them
// usesrInteractive, userInitiated,default,utility,background, unspecified


let queue3 = DispatchQueue(label: "sticker3", qos: DispatchQoS.userInitiated) // we will say Ascyn !!
let queue4 = DispatchQueue(label: "sticker4", qos:DispatchQoS.background)


queue3.async {
    for i in 1...10 {
        print("Thread3 : \(i)")
    }
}

queue4.async {
    for i in 1...10 {
        print("Thread4 : \(i)")
    }
}

// thread Delay

// seconds,miliseconds...

let queue5 = DispatchQueue(label: "stickerWithDelay",qos: DispatchQoS.userInitiated)
print(Date())
var delayTime:DispatchTimeInterval = .seconds(2)
queue5.asyncAfter(deadline: .now()+delayTime) {
    print(Date())
}

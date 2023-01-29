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


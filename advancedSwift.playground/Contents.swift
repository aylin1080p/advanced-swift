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



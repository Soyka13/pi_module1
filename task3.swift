import UIKit


func isSimple(n: Int) -> Bool {
    guard n>1 else {
        return false
    }
    
    if n==2 {
        return true
    }
    
    for i in stride(from: 3, through: Int(sqrt(Double(n))), by: 2) {
        if n%i == 0 {
            return false
        }
    }
    
    return true
}

isSimple(n: 16777259)
isSimple(n: 15)

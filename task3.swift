import UIKit


func isSimple(n: Int) -> Bool {
    guard n>1 else {
        return false
    }
    
    for i in stride(from: 2, to: n, by: 1) {
        if n%i == 0 {
            return false
        }
    }
    
    return true
}

isSimple(n: 16777259)

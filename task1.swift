import UIKit

func isSimilar(a: String, b: String, n: Int) -> Bool {
    guard a.count == b.count else {
        return false
    }
    
    var counter = 0
    
    for index in a.indices {
        if a[index] != b[index] {
            counter += 1
        }
    }
    return counter < n
}


print(isSimilar(a: "Conn", b: "Comm", n: 3))
print(isSimilar(a: "Conn", b: "Comm", n: 1))


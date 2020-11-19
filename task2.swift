import UIKit

func permutation(s: String) -> [String] {
    var result = [String]()
    result.append(s)
    
    var tmp = Array(s)
    var i = 1
    var p = Array(repeating: 0, count: tmp.count)
    
    while i < tmp.count {
        if p[i] < i {
            let j = (i % 2) == 0 ? 0 : p[i]
            tmp.swapAt(i, j)
            result.append(String(tmp))
            p[i] += 1
            i = 1
        } else {
            p[i] = 0
            i += 1
        }
        
    }
    
    return result
}

print(permutation(s: "abc"))

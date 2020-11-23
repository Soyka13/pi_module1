import UIKit

// iterative
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


// recursive
func permutate(str: String, startIndex: Int = 0) -> [String]? {
    
    guard !str.isEmpty, startIndex <= str.count else {
        return nil
    }
    
    var result = [String]()
    
    var arrayStr = Array(str)
    
   
        if startIndex == str.count {
            print(String(arrayStr))
            result.append(String(arrayStr))
        } else {
            for i in stride(from: startIndex, to: str.count, by: 1) {
                arrayStr.swapAt(startIndex, i)
                result += permutate(str: String(arrayStr), startIndex: startIndex+1) ?? []
                arrayStr.swapAt(startIndex, i)
            }
        }

    return result
}

permutate(str: "abc")

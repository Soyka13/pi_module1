import UIKit

func isRightWord(str: String) -> Bool {
    for i in stride(from: 0, to: str.count, by: 1) {

        for j in stride(from: i+1, to: str.count, by: 1) {

            let firstIndex = str.index(str.startIndex, offsetBy: i)
            let lastIndex = str.index(str.startIndex, offsetBy: j)

            let substr = str[firstIndex...lastIndex]
            
            print("i: \(i) j: \(j-1) value: \(substr)")
            
            let fi = i + substr.count
            let li = j + substr.count
            guard fi < str.count, li < str.count else {
                break
            }
            
            if substr == str[str.index(str.startIndex, offsetBy: fi)...str.index(str.startIndex, offsetBy: li)] {
                print("Success")
                return false
            }
        }
    }
    return true
}

isRightWord(str: "abacabacbabababa")

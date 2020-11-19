import UIKit

func isSimilar(a: String, b: String, n: Int) -> Bool {
    guard a.count == b.count else {
        return false
    }

    var counter = 0

    for (i, j) in zip(a, b) {
        guard counter < n else {
            return false
        }
        if i != j {
            counter += 1
        }
    }
    return counter < n
}


print(isSimilar(a: "Conn", b: "Comm", n: 3))
print(isSimilar(a: "Conn", b: "Comm", n: 1))

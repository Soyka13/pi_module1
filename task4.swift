import UIKit

extension Sequence where Element: AdditiveArithmetic {
    func sum() -> Element { reduce(.zero, +) }
}

func average<T>(arr: [T]) -> T where T: BinaryInteger {
    return arr.sum() / T(arr.count)
}

func average<T>(arr: [T]) -> T where T: BinaryFloatingPoint {
    return arr.sum() / T(arr.count)
}

print(average(arr: [1, 2, 3]))
print(average(arr: [1.0, 2.0, 3.0]))

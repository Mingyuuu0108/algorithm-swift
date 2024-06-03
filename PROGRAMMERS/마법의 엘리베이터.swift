import Foundation

func solution(_ storey: Int) -> Int {
    var storeyArray: [Int] = [0] + String(storey).compactMap { Int(String($0)) }
    var result = 0
    
    for i in (1..<storeyArray.count).reversed() {
        if storeyArray[i] > 5 || (storeyArray[i] == 5 && storeyArray[i - 1] >= 5) {
            result += 10 - storeyArray[i]
            storeyArray[i - 1] += 1
        } else {
            result += storeyArray[i]
        }
    }
    if storeyArray[0] > 0 {
        result += 1
    }
    return result
}

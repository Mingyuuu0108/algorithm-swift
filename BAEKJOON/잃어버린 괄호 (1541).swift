import Foundation

let expression = readLine()!
var numbers: [Int] = [1]

expression.forEach {
    if $0 == "+" {
        numbers.append(1)
    } else if $0 == "-" {
        numbers.append(-1)
    }
}
expression.components(separatedBy: ["-", "+"]).map { Int($0)! }.enumerated().forEach {
    numbers[$0] *= $1
}

var foundFirstMinus = false
print(numbers.reduce(0, {
    if $1 < 0 {
        foundFirstMinus = true
    }
    if foundFirstMinus && $1 > 0 {
        return $0 + ($1 * -1)
    }
    return $0 + $1
}))

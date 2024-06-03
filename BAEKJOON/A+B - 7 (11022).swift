let n = Int(readLine()!)!

for i in 1...n {
    let numbers = readLine()!.split(separator: " ").compactMap { Int($0) }
    print("Case #\(i): \(numbers[0]) + \(numbers[1]) = \(numbers.reduce(0, +))")
}

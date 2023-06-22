let n = Int(readLine()!)!

for i in 1...n+1 {
    let numbers = readLine()!.split(separator: " ").compactMap { Int($0) }
    print("Case #\(i): \(numbers.reduce(0, +))")
}

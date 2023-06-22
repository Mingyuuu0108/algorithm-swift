let n = Int(readLine()!)!

for _ in 0..<n {
    let numbers = readLine()!.split(separator: ",").compactMap { Int($0) }
    print(numbers.reduce(0, +))
}

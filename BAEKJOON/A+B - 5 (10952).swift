while let readLine = readLine() {
    let numbers = readLine.split(separator: " ").compactMap { Int($0) }
    let sum = numbers.reduce(0, +)
    if sum == 0 {
        break
    } else {
        print(sum)
    }
}

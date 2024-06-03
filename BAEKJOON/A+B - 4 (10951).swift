while let readLine = readLine() {
    let numbers = readLine.split(separator: " ").compactMap { Int($0) }
    print(numbers.reduce(0, +))
}

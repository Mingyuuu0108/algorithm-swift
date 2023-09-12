while let input = readLine(), input != "0" {
    
    let numbers = input.split(separator: " ").compactMap { Int($0) }
    
    var newArr: [Int] = []
    
    for i in 1..<numbers.count {
        if i == numbers.count - 1 || numbers[i] != numbers[i + 1] {
            newArr.append(numbers[i])
        }
    }
    newArr.forEach { number in
        print("\(number)", terminator: " ")
    }
    print("$")
}

let input = readLine()!.split(separator: " ").map { Int($0)! }
var (n, number1, number2, result) = (input[0], input[1], input[2], 0)


while number1 != number2 {
    number1 -= number1 / 2
    number2 -= number2 / 2
    result += 1
}

print(result)

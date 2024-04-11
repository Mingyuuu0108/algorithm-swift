let input = readLine()!.split(separator: " ").map { Int($0)! }
let (n, b) = (input[0], input[1])

let result = String(n, radix: b)
print(b >= 10 ? result.uppercased() : result)

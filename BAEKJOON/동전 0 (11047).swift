let input = readLine()!.split(separator: " ").map { Int($0)! }
var (n, k) = (input[0], input[1])
var coins = [Int]()
var result = 0
for _ in 0..<n {
    coins.append(Int(readLine()!)!)
}
coins.reversed().forEach { coin in
    if (k / coin) >= 1 {
        result += (k / coin)
        k = k % coin
    }
}
print(result)

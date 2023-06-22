let n = Int(readLine()!)!

var answer: Int = 0
var cows: [Int] = [-2] + Array(repeating: -1, count: 10)

for _ in 0..<n {
    let numbers = readLine()!.split(separator: " ").compactMap { Int($0)! }
    
    let (cowNumber, cowPosition) = (numbers[0], numbers[1])
    
    if cows[cowNumber] != -1 && cows[cowNumber] != cowPosition {
        answer += 1
    }
    cows[cowNumber] = cowPosition
}

print(answer)

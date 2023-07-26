let n = Int(readLine()!)!
var seat = Array(repeating: "", count: 101)
var answer: Int = 0

let seatNumber = readLine()!.split(separator: " ").map{ Int($0)! }

for i in 0..<n {
    
    if seat[seatNumber[i]] == "" {
        seat[seatNumber[i]] = "x"
    } else if seat[seatNumber[i]] == "x" {
        answer += 1
    }
}

print(answer)

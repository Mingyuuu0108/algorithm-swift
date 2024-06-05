let n = Int(readLine()!)!
var times = readLine()!.split(separator: " ").map { Int($0)! }
times.sort { $0 < $1 }

var result = 0
for i in 0..<n {
    result += times[0..<n - i].reduce(0, {
        $0 + $1
    })
}
print(result)

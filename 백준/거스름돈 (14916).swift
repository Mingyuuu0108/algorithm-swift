let n = Int(readLine()!)!
var answer = 0
var caseArr: [Int] = []

for i in 0...n/5 {
    
    if (n - i * 5) % 2 == 0 {
       caseArr.append(i + (n - i * 5) / 2)
    }
}

if caseArr.isEmpty {
    print(-1)
} else {
    print(caseArr.min() ?? -1)
}

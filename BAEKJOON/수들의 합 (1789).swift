let s = Int(readLine()!)!
var answer = 0
var number = 0

if s == 1 {
    print(1)
} else {
    
    for i in 1...s {
    
    number += i
    answer += 1
    
    if number > s {
        print(answer - 1)
        break
        }
    }
}
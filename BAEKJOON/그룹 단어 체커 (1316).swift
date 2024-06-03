var n = Int(readLine()!)!
var result = n

for _ in 0..<n {
    let word = Array(readLine()!)
    var charSet = Set<Character>()
    
    for i in 1..<word.count {
        if word[i] != word[i - 1], charSet.contains(word[i]) {
            result -= 1
            break
        }
        charSet.insert(word[i - 1])
    }
}
print(result)

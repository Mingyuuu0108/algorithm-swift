let n = Int(readLine()!)!
var fileName = readLine()!.map { String($0) }

for _ in 0..<n-1 {
    let comparedFileName = readLine()!.map { String($0) }
    
    for i in 0..<comparedFileName.count {
        if fileName[i] != comparedFileName[i] {
            fileName[i] = "?"
        }
    }
}
print(fileName.joined())

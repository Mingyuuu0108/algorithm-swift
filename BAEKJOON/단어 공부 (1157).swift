let str = readLine()!
let sortedArray = str.uppercased().sorted()
var result = ""
var count = 0

for code in 65...90 {
    var sameCount = 0
    for i in 0..<sortedArray.count {
        if sortedArray[i] == Character(UnicodeScalar(code)!) {
            sameCount += 1
        }
    }
    if sameCount > count {
        count = sameCount
        result = String(UnicodeScalar(code)!)
    } else if sameCount == count {
        result = "?"
    }
}
print(result)

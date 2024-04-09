let n = readLine()!.split(separator: " ").map { String($0) }
let (a, b) = (n[0], n[1])

if a.first != "-" && b.first != "-" {
    print(calculating(a, b))
} else if a.first == "-" && b.first == "-" {
    print("-" + calculating(String(a.dropFirst()), String(b.dropFirst())))
} else if a.first == "-" {
    print(calculatingOtherSign(String(a.dropFirst()), b, "a"))
} else if b.first == "-" {
    print(calculatingOtherSign(a, String(b.dropFirst()), "b"))
}

func calculating(_ A: String, _ B: String) -> String {
    
    var result = ""
    var (a, b) = (A, B)
    
    let maxLength = max(a.count, b.count)
    a = padZero(a, to: maxLength)
    b = padZero(b, to: maxLength)
    
    var carry = 0
    for i in stride(from: maxLength - 1, through: 0, by: -1) {
        let sum1 = Int(String(a[a.index(a.startIndex, offsetBy: i)]))!
        let sum2 = Int(String(b[b.index(b.startIndex, offsetBy: i)]))!
        
        let totalSum = sum1 + sum2 + carry
        result.insert(Character(String(totalSum % 10)), at: result.startIndex)
        carry = totalSum / 10
    }
    
    if carry != 0 {
        result.insert(Character(String(carry)), at: result.startIndex)
    }
    
    return result
}

func calculatingOtherSign(_ A: String, _ B: String, _ minusString: String) -> String {
    
    var sign = ""
    var result = ""
    var (a, b) = (A, B)
    
    let maxLength = max(a.count, b.count)
    a = padZero(a, to: maxLength)
    b = padZero(b, to: maxLength)
    
    if a.count < b.count {
        sign = "-"
        (a, b) = (b, a)
    } else if a.count == b.count && a < b {
        sign = "-"
        (a, b) = (b, a)
    }
    
    var carry = 0
    for i in stride(from: maxLength - 1, through: 0, by: -1) {
        let minus1 = Int(String(a[a.index(a.startIndex, offsetBy: i)]))!
        let minus2 = Int(String(b[b.index(b.startIndex, offsetBy: i)]))!
        
        var totalMinus = minus1 - minus2 - carry
        if totalMinus < 0 {
            totalMinus += 10
            carry = 1
        } else {
            carry = 0
        }
        
        result.insert(Character(String(totalMinus)), at: result.startIndex)
    }
    
    let droppedZeroResult = result.drop(while: { $0 == "0" })
    
    return sign + String(droppedZeroResult)
}

func addZero(_ count: Int, _ inputString: String) -> String {
    
    return String(repeating: "0", count: count) + inputString
}

func padZero(_ str: String, to length: Int) -> String {
    
    let paddingCount = max(0, length - str.count)
    return String(repeating: "0", count: paddingCount) + str
}

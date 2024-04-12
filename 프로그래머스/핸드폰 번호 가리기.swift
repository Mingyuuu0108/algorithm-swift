func solution(_ phone_number:String) -> String {
    
    let result: [String] = phone_number.enumerated().map { (i, char) in
        return i < phone_number.count - 4 ? "*" : String(char)
    }
    return result.joined()
}

print(solution("01033334444"))

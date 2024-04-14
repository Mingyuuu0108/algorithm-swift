func solution(_ babbling:[String]) -> Int {
    return babbling.filter {
        let replace = $0
            .replacingOccurrences(of: "aya", with: "!")
            .replacingOccurrences(of: "ye", with: "@")
            .replacingOccurrences(of: "woo", with: "#")
            .replacingOccurrences(of: "ma", with: "$")
        
        for i in 0..<(replace.count - 1) {
            let c1 = replace[replace.index(replace.startIndex, offsetBy: i)]
            let c2 = replace[replace.index(replace.startIndex, offsetBy: i + 1)]
            if c1 == c2 {
                return false
            }
        }
        let result = replace
            .replacingOccurrences(of: "!", with: "")
            .replacingOccurrences(of: "@", with: "")
            .replacingOccurrences(of: "#", with: "")
            .replacingOccurrences(of: "$", with: "")
        return result.isEmpty
    }.count
}

print(solution(["aya", "yee", "u"]))

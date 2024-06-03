import Foundation

/// 새로운 풀이
func solution(_ babbling:[String]) -> Int {
    return babbling.filter { babble in
        let replace = babble.replacingOccurrences(of: "aya", with: " ")
                            .replacingOccurrences(of: "ye", with: " ")
                            .replacingOccurrences(of: "woo", with: " ")
                            .replacingOccurrences(of: "ma", with: " ")
        return replace.trimmingCharacters(in: .whitespaces).isEmpty
    }.count
}

/// 예전 풀이
func oldSolution(_ babbling:[String]) -> Int {
    
    var replaceArray: [String] = []
    var (index, result) = (0, 0)
    
    for i in 0..<babbling.count {
        var replace = babbling[i]
        ["aya", "ye", "woo", "ma"].forEach {
            replace = replace.replacingOccurrences(of: $0, with: " ")
        }
        replaceArray.append(replace)
        index += 1
        if replaceArray[i].trimmingCharacters(in: .whitespaces).isEmpty {
            result += 1
        }
    }
    return result
}

print(solution(["aya", "yee", "u", "maa", "wyeoo"]))

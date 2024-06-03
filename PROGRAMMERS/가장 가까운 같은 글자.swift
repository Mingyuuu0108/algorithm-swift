import Foundation

func solution(_ s:String) -> [Int] {
    
    let array = Array(s)
    var resultArray: [Int] = []
    
    resultArray = s.enumerated().map { (i, char) in
        var result = -1
        for j in 0..<i {
            if char == array[j]{
                result = abs(j - i)
            }
        }
        for j in i + 1..<s.count {
            if char == array[j] && j < i {
                result = abs(j - i)
                break
            }
        }
        return result
    }
    return resultArray
}
print(solution("banana"))

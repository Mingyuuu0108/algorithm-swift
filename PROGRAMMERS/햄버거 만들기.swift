import Foundation

// 처음 접근한 방식 (시간 초과 발생)
func failedSolution(_ ingredient:[Int]) -> Int {
    var ingredients = ingredient.map { String($0) }.joined()
    var result = 0
    
    while ingredients.contains("1231") {
        ingredients = ingredients.components(separatedBy: "1231").joined()
        result += 1
    }
    return result
}

// stack 을 통해 접근한 방식
func solution(_ ingredient:[Int]) -> Int {
    var stack = [Int]()
    var result = 0
    
    for i in ingredient {
        stack.append(i)
        if stack.count >= 4 &&
            stack[stack.count - 4] == 1 &&
            stack[stack.count - 3] == 2 &&
            stack[stack.count - 2] == 3 &&
            stack[stack.count - 1] == 1 {
            stack.removeLast(4)
            result += 1
        }
    }
    return result
}

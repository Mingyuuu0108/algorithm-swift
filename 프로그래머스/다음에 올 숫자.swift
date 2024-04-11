func solution(_ common:[Int]) -> Int {
    
    var sum = 0
    var result = 0
    
    if (common[1] - common[0]) == (common[2] - common[1]) {
        result = common.last! + (common[1] - common[0])
    } else {
        result = (common[1] / common[0]) * (common.last!)
    }
    
    return result
}

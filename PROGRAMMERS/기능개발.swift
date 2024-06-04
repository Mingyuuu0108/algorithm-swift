func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    var days = [Int]()
    
    for i in 0..<progresses.count {
        var day = 0
        var progress = progresses[i]
        while progress < 100 {
            day += 1
            progress += speeds[i]
        }
        days.append(day)
    }
    
    var releaseProgresses = [Int]()
    var maxDay = days[0]
    var count = 1
    
    for i in 1..<days.count {
        if days[i] <= maxDay {
            count += 1
        } else {
            releaseProgresses.append(count)
            count = 1
            maxDay = days[i]
        }
    }
    releaseProgresses.append(count)
    
    return releaseProgresses
}

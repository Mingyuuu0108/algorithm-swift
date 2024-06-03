func solution(_ wallpaper:[String]) -> [Int] {
    var (x1, y1) = (99, 99)
    var (x2, y2) = (0, 0)
    
    var wall = wallpaper.map { $0.map{ String($0) } }
    var count = 0
    
    wall.forEach {
        var `repeat` = 0
        for c in $0 {
            if c == "#" && y1 >= `repeat` {
                y1 = `repeat`
            }
            if c == "#" && y2 <= `repeat` {
                y2 = `repeat` + 1
            }
            if c == "#" && x1 >= count {
                x1 = count
            }
            if c == "#" && x2 <= count {
                x2 = count + 1
            }
            `repeat` += 1
        }
        count += 1
    }
    return [x1, y1, x2, y2]
}

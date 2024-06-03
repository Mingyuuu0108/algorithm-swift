var N = Int(readLine()!)!

var arr: [[String]] = Array(repeating: Array(repeating: " ", count: getSize(N)), count: getSize(N))

func drawStar(_ size: Int, _ startIdx: Int) {
    
    let start = startIdx
    
    if size == 1 { arr[size/2][size/2] = "*" } else {
        
        for i in stride(from: start, to: size, by: 1) {
            arr[i][start] = "*"
            arr[i][size-1] = "*"
            arr[start][i] = "*"
            arr[size-1][i] = "*"
        }
    }
    
    if size > 1 {
        drawStar(size - 2, start + 2)
    }
}

func printStar() {
    
    for i in 0..<getSize(N) {
        var str = ""
        
        for j in 0..<getSize(N) {
            str.append(arr[i][j])
        }
        print(str)
    }
}

func getSize(_ n: Int) -> Int {
    return n * 4 - 3
}

drawStar(getSize(N), 0)
printStar()

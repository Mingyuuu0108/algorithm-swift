var N = Int(readLine()!)!

for i in 1...N {
    if i % 2 == 0 {
        print(" " + drawStar())
    } else {
        print(drawStar())
    }
}

func drawStar() -> String {
    var str: String = ""
    for i in 1...N {
        str += "*"
        if i == N {
            return str
        } else {
            str += " "
        }
    }
    return ""
}

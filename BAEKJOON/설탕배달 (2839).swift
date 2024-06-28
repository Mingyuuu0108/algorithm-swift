var sugar = Int(readLine()!)!
var result = 0
while sugar != 0 {
    switch sugar {
    case 3, 6, 9, 12:
        result += sugar / 3
        sugar = 0
    default:
        sugar -= 5
        result += 1
    }
    if sugar < 0 {
        result = -1
        break
    }
}
print(result)

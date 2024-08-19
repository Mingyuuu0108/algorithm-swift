/*
var array = [1]

for _ in 1..<Int(readLine()!)! {
    var now = array.first
    var count = 0
    var newArray = [Int]()

    for a in array + [0] {
        if now == a {
            count += 1
        } else {
            newArray.append(now!)
            newArray.append(count)
            now = a
            count = 1
        }
    }
    array = newArray
}
print(array.max()!)
 */

let n = Int(readLine()!)!
print(n < 6 ? [1, 1, 2, 2, 2][n - 1] : 3)

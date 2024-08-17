let input = readLine()!.split(separator: " ").map { Int($0)! }
let (n, k, l) = (input[0], input[1], input[2])
var count = 0
var resultRatings = [Int]()

for _ in 0..<n {
    let ratings = readLine()!.split(separator: " ").map { Int($0)! }
    if ratings[0] >= l && ratings[1] >= l && ratings[2] >= l &&
        ratings.reduce(0, +) >= k {
        count += 1
        resultRatings.append(contentsOf: ratings)
    }
}
print(count)
if !resultRatings.isEmpty {
    print(resultRatings.map { String($0) }.joined(separator: " "))
}

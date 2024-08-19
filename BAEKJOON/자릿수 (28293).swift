import Foundation

/// 거듭제곱의 자릿수 개수 공식 : [log10(a^b)] + 1
let input = readLine()!.split(separator: " ").map { Double($0)! }
print(Int(log10(input[0]) * input[1]) + 1)

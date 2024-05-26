var peace = readLine()!.split(separator: " ").map{ Int($0)! }
for i in 0..<6 { print("\([1, 1, 2, 2, 2, 8][i] - peace[i])", terminator: " ") }

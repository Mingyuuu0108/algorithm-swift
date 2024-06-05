let n = Int(readLine()!)!
var stack = [Int]()

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    switch input[0] {
    case 1:
        stack.append(input[1])
    case 2:
        print(stack.popLast() ?? -1)
    case 3:
        print(stack.count)
    case 4:
        print(stack.isEmpty ? 1 : 0)
    default:
        print(stack.last ?? -1)
    }
}

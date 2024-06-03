var damages: [[Int]] = []
var time = -1
for _ in 0..<3 {
    damages.append(readLine()!.split(separator: " ").map { Int($0)! })
}
var hp = Int(readLine()!)!

while hp > 0 {
    time += 1
    damages.forEach {
        if time % $0[0] == 0 {
            hp -= $0[1]
        }
    }
}
print(time)

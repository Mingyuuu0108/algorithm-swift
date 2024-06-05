let n = Int(readLine()!)!
var meetingInfo = [[Int]]()

for _ in 0..<n {
    meetingInfo.append(readLine()!.split(separator: " ").map { Int($0)! })
}

meetingInfo.sort {
    $0[1] == $1[1] ? $0[0] < $1[0] : $0[1] < $1[1]
}

var endTime = 0
var result = 0

for meeting in meetingInfo {
    if meeting[0] >= endTime {
        result += 1
        endTime = meeting[1]
    }
}

print(result)

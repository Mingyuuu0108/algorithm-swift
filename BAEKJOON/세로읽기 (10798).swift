var mda: [[String?]] = Array(repeating: Array(repeating: nil, count: 15), count: 5)
for i in 0..<5 {
    let input = readLine()!.map { String($0) }
    input.enumerated().forEach { (index, c) in
        mda[i][index] = c
    }
}
for reap in 0..<15 {
    for i in 0..<5 {
        print(mda[i][reap] ?? "", terminator: "")
    }
}

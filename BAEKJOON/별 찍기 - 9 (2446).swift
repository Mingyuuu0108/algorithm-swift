let n = Int(readLine()!)!

for i in stride(from: n, to: 0, by: -1) {
    let space = String(repeating: " ", count: n - i)
    let star = String(repeating: "*", count: i*2 - 1)
    print("\(space)\(star)")
}

if n > 1 {
    for i in 2...n {
        let space = String(repeating: " ", count: n - i)
        let star = String(repeating: "*", count: i*2 - 1)
        print("\(space)\(star)")
    }
}

let p = Int(readLine()!)!
var (sw, emd, ai, none) = (0, 0, 0, 0)
for _ in 0..<p {
    let gcn = readLine()!.split(separator: " ").map { Int($0)! }
    if gcn[0] == 1 {
        none += 1
    } else {
        switch gcn[1] {
        case 1, 2:
            sw += 1
        case 3:
            emd += 1
        default:
            ai += 1
        }
    }
}
print("\(sw)\n\(emd)\n\(ai)\n\(none)")

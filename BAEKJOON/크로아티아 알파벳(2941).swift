import Foundation
var str = readLine()!
["c=","c-","dz=","d-","lj","nj","s=","z="].forEach {
    str = str.replacingOccurrences(of: $0, with: "*")
}
print(str.count)

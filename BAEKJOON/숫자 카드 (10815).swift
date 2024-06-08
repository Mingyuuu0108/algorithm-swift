_ = readLine()
let cards = Set(readLine()!.split(separator: " "))
_ = readLine()
readLine()!.split(separator: " ").forEach {
    print(cards.contains($0) ? 1 : 0, terminator: " ")
}

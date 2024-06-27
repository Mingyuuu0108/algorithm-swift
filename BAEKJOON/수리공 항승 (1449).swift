let l = readLine()!.split(separator: " ").map{Int($0)!}[1]
var leaks = readLine()!.split(separator: " ").map{Int($0)!}.sorted()
var (cover, t) = (0, 0)

leaks.forEach {
    if $0 > cover {
        t += 1
        cover = $0+l-1
    }
}
print(t)

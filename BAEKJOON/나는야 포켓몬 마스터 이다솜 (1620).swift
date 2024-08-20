var input = readLine()!.split(separator: " ").map { Int($0)! }
var pokemons = [Int: String]()
var pokemonNames = [String: Int]()

for i in 1...input[0] {
    let name = readLine()!
    pokemons[i] = name
    pokemonNames[name] = i
}

for _ in 0..<input[1] {
    let question = readLine()!
    if let number = Int(question),
        let pokemonName = pokemons[number] {
        print(pokemonName)
    } else {
        print(pokemonNames[question]!)
    }
}

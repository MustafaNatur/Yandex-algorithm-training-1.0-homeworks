// You are given a dictionary consisting of pairs of words. Each word is a synonym for its paired word. All the words in the dictionary are different. For one given word, define its synonym.

// Input format
// The program receives the input number of pairs of synonyms N. This is followed by N lines, each line contains exactly two synonym words. This is followed by one word.

// Output format
// The program should output a synonym for this word. Note

// This problem can be solved without dictionaries (by saving all the input data in the list), but the solution with a dictionary will be simpler.

let n = Int(readLine()!)!
var d = [String:String]()
for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{String($0)}
    d[input[0]] = input[1]
    d[input[1]] = input[0]
}

let request = readLine()!

print(d[request] ?? "No")
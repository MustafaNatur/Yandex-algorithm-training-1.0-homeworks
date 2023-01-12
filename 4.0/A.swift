let n = Int(readLine()!)!
var d = [String:String]()
for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{String($0)}
    d[input[0]] = input[1]
    d[input[1]] = input[0]
}

let request = readLine()!

print(d[request] ?? "No")
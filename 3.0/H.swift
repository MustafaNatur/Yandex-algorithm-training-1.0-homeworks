let n = Int(readLine()!)!
var set:Set<Int> = []
for _ in 0..<n {
	let x = readLine()!.split(separator: " ").map{Int($0)}[0]
    set.insert(x!)
}

print(set.count)
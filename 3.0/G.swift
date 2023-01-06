let n = Int(readLine()!)!
var seti:Set<Int> = []

for _ in 0..<n  {
	let input = readLine()!.split(separator: " ").map{Int($0)!}
    if input.reduce(0, {$0 + $1}) + 1 == n && input[0] >= 0 && input[1] >= 0 {
    	seti.insert(input[0])
    }
}

print(seti.count)
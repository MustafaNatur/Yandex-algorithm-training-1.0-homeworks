var d = [Int:Int]()

let n = Int(readLine()!)!

for _ in 0..<n {
	let a = readLine()!.split(separator: " ").map{Int($0)!}
    var a0 = a[0]
    var a1 = a[1]
    if d.keys.contains(a0) {
    	if (d[a0]! < a1) {d[a0] = a1}
    } else {
    	d[a0] = a1
    }
}

print(d.values.reduce(0){$0 + $1})
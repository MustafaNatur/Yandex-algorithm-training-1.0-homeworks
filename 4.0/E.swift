// To build a two-dimensional pyramid, use rectangular blocks, each of the exits to the conference and the height.
// You can put one block on top of another only if the width of the top of the block is absolutely excluded (blocks cannot be rotated).
// The lowest one in the pyramid can be blocked by anyone.
// Given a set of specific blocks, what is the highest pyramid that can be built from them.

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
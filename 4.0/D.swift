let n = Int(readLine()!)!
var info = readLine()!.split(separator: " ").map{Int($0)!}
let k = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").map{Int($0)!}
var use = 0
for i in 0..<n {
    use = arr.filter{$0 == i + 1}.count
	if info[i] < use {
    	print("YES")
     } else {
    	print("NO")
     }
}

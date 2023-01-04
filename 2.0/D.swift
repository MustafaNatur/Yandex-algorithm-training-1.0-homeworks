let str = readLine()!
let arr = str.split(separator: " ").map{Int($0) ?? 0}
var count = 0;

if arr.count >= 3 {
    for i in 1..<arr.count - 1 {
	    if arr[i] > arr[i+1] && arr[i] > arr[i-1] {count+=1}
    }      
}
print(count)
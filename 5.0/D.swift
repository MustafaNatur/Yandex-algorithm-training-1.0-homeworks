let input = readLine()!.split(separator: " ").map{Int($0)!}
let k = input[1]
let arr = readLine()!.split(separator: " ").map{Int($0)!}

var r = 1, l = 0
var count = 0
var n = arr.count
while (r < n && l < n - 1) {
	if (arr[r] - arr[l] <= k){
    	r += 1
    } else {
    	count += n - r
        l += 1
    }  
}
print(count)
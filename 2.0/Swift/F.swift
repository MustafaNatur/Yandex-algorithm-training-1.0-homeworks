let n = Int(readLine()!)!

let str = readLine()!

var arr = str.split(separator: " ").map{Int($0)!}
let count = arr.count

var i = 0
var ans:[Int] = []
while (arr != arr.reversed()) {
	arr.insert(arr[i], at: count)
    ans.append(arr[i])
    i+=1
}

print(i)
print(ans.reversed().map{String($0)}.joined(separator: " "))
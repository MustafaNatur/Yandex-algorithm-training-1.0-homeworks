//print(Set(readLine()!.split(separator: " ").map{Int($0)!}).intersection(Set(readLine()!.split(separator: " ").map{Int($0)!})).sorted().map{"\($0)"}.joined(separator:" "))
// or
let ans = Set(readLine()!.split(separator: " ").map{Int($0)!}).intersection(Set(readLine()!.split(separator: " ").map{Int($0)!})).sorted()
print(ans.map{"\($0)"}.joined(separator:" "))
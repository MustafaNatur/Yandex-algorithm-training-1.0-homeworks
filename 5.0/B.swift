var i = readLine()!.split(separator: " ").map{Int($0)!}
var k = i[1]
var a = readLine()!.split(separator: " ").map{Int($0)!}
var R = 0, count = 0, sum = 0
for L in 0..<a.count {
  while(sum < k && R < a.count) {
    sum+=a[R]
    R+=1
  }

  if (sum == k) {
    count+=1
  }
  sum-=a[L]
}
print(count)
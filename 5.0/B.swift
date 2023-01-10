// Vasya loves to look everywhere for his lucky number K
// Every day he goes to school down the street along which N
// machines. He became interested in the question of how many 
// sets of cars are there standing in a row in places from L to R, 
// that the sum of their numbers is equal to K. Help Vasya find out 
// the answer to his question. For example, if the number N=5, K=17, 
// and the car numbers are 17, 7, 10, 7, 10, then there are 4 sets of cars

//https://contest.yandex.ru/contest/27794/problems/B/

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
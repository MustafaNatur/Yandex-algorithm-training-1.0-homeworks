

// https://contest.yandex.ru/contest/27393/problems/B/?success=80654150#175943/2016_09_28/WqIXKyFQex

let a = Int(readLine()!)!
let b = Int(readLine()!)!
let c = Int(readLine()!)!
(a + b > c && a + c > b && b + c > a) ? print("YES") : print("NO")

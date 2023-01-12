let n = Int(readLine()!)!
let classesArr = readLine()!.split(separator: " ").map{Int($0)!}
let m = Int(readLine()!)!
var data = [[Int]]()
for _ in 0..<m {
  let info = readLine()!.split(separator: " ").map{Int($0)!}
  data.append([info[0], info[1]])
}

var sum = 0
var maxPower = 1000
var maxPrice = 1000
var arr = [Int](repeating: maxPrice, count: maxPower + 1)
arr[0] = 0
for conconditioner in data {
  var power = conconditioner[0]
  let cost = conconditioner[1]
  while (cost < arr[power]) {
    arr[power] = cost
    power-=1
  }
}

classesArr.forEach{sum+=arr[$0]}
print(sum)
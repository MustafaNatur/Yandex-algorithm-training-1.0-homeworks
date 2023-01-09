import Foundation
let file = freopen("input.txt", "r", stdin)
var data = [String:Int]()
while let line = readLine() {
  let input  = line.split(separator: " ").map{String($0)}
    let type = input[0]
  if (type == "BALANCE") {
      let name = input[1]
      print(data[name] ?? "ERROR")
    } else if (type == "DEPOSIT") {
      let name = input[1]
        let sum = Int(input[2])!
      data[name, default: 0]+=sum
    } else if (type == "WITHDRAW") {
      let name = input[1]
        let sum = Int(input[2])!
      data[name, default: 0]-=sum
    } else if (type == "TRANSFER") {
      let nameFrom = input[1]
        let nameTo = input[2]
        let sum = Int(input[3])!
      data[nameFrom, default: 0]-=sum
        data[nameTo, default: 0]+=sum
    } else if (type == "INCOME") {
      let p = Int(input[1])!
      data.keys.forEach{data[$0]!+=abs(data[$0]!)*p/100}
    }
}
Given a database of sales of some online store. 
//  Each line of the input file is a record of the form Buyer product quantity,
//  where Buyer is the name of the buyer (string without spaces), 
//  product is the name of the product (string without spaces), 
//  quantity is the number of purchased units of the product. 
//  Create a list of all customers, and for each customer, 
//  count the number of units of each item they purchased.

import Foundation

var d = [String:[String:Int]]()

let file = freopen("input.txt", "r", stdin)
var name = ""
var item = ""
var count = 0
var arr = [String]()
while let line = readLine() {
    arr = line.split(separator: " ").map{String($0)}
    name = arr[0]
    item = arr[1]
    count = Int(arr[2])!
    if d.keys.contains(name) {
      d[name]![item, default: 0]+=count
    } else {
      d[name] = [item:count]
    }
}

for name in d.sorted( by: { $0.0 < $1.0 }) {
  print("\(name.key):")
  for item in name.value.sorted( by: { $0.0 < $1.0 }) {
    print("\(item.key) \(item.value)")
  }
}
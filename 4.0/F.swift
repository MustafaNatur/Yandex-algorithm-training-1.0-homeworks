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
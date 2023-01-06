import Foundation

let arr1 = Array(readLine()!).map{String($0)}
let str2 = readLine()!

var counter = 0

for i in 0..<arr1.count - 1 {
    if (str2.contains(arr1[i] + arr1[i + 1])) {
        counter+=1
    }
}

print(counter)
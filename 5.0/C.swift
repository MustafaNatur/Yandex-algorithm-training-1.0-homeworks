let pointsCount = Int(readLine()!)!
var arrY:[Int] = []
for _ in 0..<pointsCount {
  let input = readLine()!.split(separator: " ").map{Int($0)!}
  let y = input[1]
  arrY.append(y)
  
}

func process(_ arr:[Int]) -> ([Int], [Int]) {
  var newArrLR = [0]
  var newArrRL = [0]
  for i in 1..<arr.count {
    let diff = arr[i] - arr[i-1]
    if diff > 0 {
      newArrLR.append(diff + newArrLR[i - 1])
      newArrRL.append(newArrRL[i - 1])
    } else {
      newArrRL.append(-1 * diff + newArrRL[i - 1])
      newArrLR.append(newArrLR[i - 1])
    }
  }
  return (newArrLR, newArrRL)
}

let mapLR = process(arrY).0
let mapRL = process(arrY).1


let requestsCount = Int(readLine()!)!

for _ in 0..<requestsCount {
    let input = readLine()!.split(separator: " ").map{Int($0)!}
  let a = input[0] - 1
  let b = input[1] - 1
  if (a < b) {
    print(mapLR[b] - mapLR[a])
  } else {
    print(mapRL[a] - mapRL[b])
  }
}
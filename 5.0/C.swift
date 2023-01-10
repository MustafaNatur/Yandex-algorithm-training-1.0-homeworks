
// Alexander recently became interested in mountain tourism. He is already tired of conquering individual mountain peaks, and he
// is going to conquer a real mountain range!
// Recall that Alexander lives in a flat world. The mountain chain consists of segments connecting points
// on the plane, each of which is strictly to the right of the previous one (the x-coordinate of the next point is greater
// than that of the previous one). A highway on a mountain chain is the part of it between two fixed ends of segments.

// The section on which the y coordinate (height) always increases when driving along the highway is called an elevation,
// the elevation value is the height difference between the starting and ending points of the section.

// The travel company offers a choice of several trails on the same mountain range.
// Due to financial difficulties, Alexander can choose only one of these routes for the trip.
// You decided to help him with the choice. It is important for Alexander to determine the total height
// of the ascents on each route. Please note that the route can go from left to right, so

// https://contest.yandex.ru/contest/27794/problems/C/

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
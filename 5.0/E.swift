func solution(_ k:Int, _ colors:[Int]) -> (Int, Int) {
  var left = 0
  var ans = (0, colors.count - 1)
  var s = [Int](repeating: 0, count: k+1)
  s[0] = 1
  for (right, color) in colors.enumerated() {
    s[color] += 1
    if (!s.contains(0)) {
      while (s[colors[left]] > 1) {
        s[colors[left]]-=1
        left+=1
      }
      if (right - left < ans.1 - ans.0) {
        ans = (left, right)
      }
    }
  }
  ans.0+=1
  ans.1+=1
  return ans
}

let input = readLine()!.split(separator: " ").map{Int($0)!}
let arr = readLine()!.split(separator: " ").map{Int($0)!}
let ans = solution(input[1], arr)
print("\(ans.0) \(ans.1)")
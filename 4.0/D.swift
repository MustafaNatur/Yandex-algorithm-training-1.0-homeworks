// When making a keyboard, initially for each key, the number of clicks that
// it must withstand is set. If you know these values for the keyboard you are
// using, then for a certain sequence of keys pressed, you can determine which
// keys will break during their use, and which ones will not.

// You need to write a program that determines which keys will 
// break during a given keyboard operation option.


// The first line of input data contains an integer n (1 ≤ n ≤ 1000) — the number
// of keys on the keyboard. The second line contains n integers —c1, c2, ... , sp,
// where ci (1 ≤ ci ≤ 100000) is the number of clicks sustained by the i—th key.
// The third line contains an integer k (1 ≤ k ≤ 100000) — the total number of keystrokes,
// and the last line contains k integers pj (1 ≤ pj ≤ n) — the sequence of keystrokes.

let n = Int(readLine()!)!
var info = readLine()!.split(separator: " ").map{Int($0)!}
let k = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").map{Int($0)!}
var use = 0
for i in 0..<n {
    use = arr.filter{$0 == i + 1}.count
	if info[i] < use {
    	print("YES")
     } else {
    	print("NO")
     }
}

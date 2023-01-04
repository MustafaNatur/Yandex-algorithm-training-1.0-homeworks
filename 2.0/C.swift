var size = Int(readLine()!)!
if let str = readLine() {
    let arr = str.split(separator: " ").map{Int($0)!}
    if let str2 = readLine() {
    	let num = Int(str2)!
        var ans = arr[0]
        var min = abs(arr[0] - num)
       	for i in 0..<size {
        	if min > abs(arr[i]-num) {
            	min = abs(arr[i]-num)
                ans = arr[i];
            }
        }
        print(ans)
    }
}
let str = readLine()!

var arr = str.split(separator: " ").map{Int($0)!}

if (arr.count > 2) {
    let max1 = arr.max()!

    arr.remove(at: arr.firstIndex(of: max1)!)
    let max2 = arr.max()!

    let min1 = arr.min()!

    arr.remove(at: arr.firstIndex(of: min1)!)
    let min2 = arr.min()!

    if (max1 * max2 > min1*min2) {
    	print("\(max2) \(max1)")
    } else {
    	print("\(min1) \(min2)")
    }
} else if (arr.count == 2){
    print("\(arr.min()!) \(arr.max()!)")
}
var arr:[Int] = []
var x = readLine()!
var is1 = true, is2 = true, is3 = true, is4 = true, is5 = true, is6 = true
while(x != "-2000000000") {
	arr.append(Int(x)!)
    x = readLine()!
}

if (arr.count > 1) {
for i in 0..<arr.count-1 {
	let a = arr[i]
    let b = arr[i+1]
    
	if a == b {
    	is2 = false
        is4 = false
    }
    
    if a < b {
    	is1 = false
        is4 = false
        is5 = false
    }
    
    if a > b {
    	is1 = false
        is2 = false
        is3 = false
    }
}

    if (is1) {
        print("CONSTANT");
    } else if(is2) {
        print("ASCENDING");
    } else if(is3) {
        print("WEAKLY ASCENDING");
    } else if(is4) {
        print("DESCENDING");
    } else if(is5) {
        print("WEAKLY DESCENDING");
    } else if(is6) {
        print("RANDOM");
    }
}
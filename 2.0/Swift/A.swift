if let str = readLine() {
	var ans = "YES";
	let arr = str.split(separator: " ")
    if (arr.count > 1) {
    	for i in 0...arr.count-2 {
    		if arr[i] >= arr[i+1] {
        		ans = "NO";
        	}
    	}
    	
    }
    print(ans);
}
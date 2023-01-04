let count = readLine()!

let str = readLine()!

let arr = str.split(separator: " ").map{Int($0)!}

let max = arr.max()
var score = -1
var ans = 1
for i in 1..<arr.count-1 {
	if arr[i]%10 == 5 && arr[i+1] < arr[i] && arr[i-1] == max && score < arr[i]{
    	score = arr[i]
    }
}

if (score == -1) {
	print(0)
} else {
	for i in arr {
		if i > score {
    		ans+=1
    	}
	}
	print(ans)
}


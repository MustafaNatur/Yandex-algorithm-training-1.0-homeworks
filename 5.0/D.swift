// In the center of Che there is a pedestrian street - one of the most popular places for walking residents of the city.
// It is very pleasant to walk along this street, because there are n funny monuments along the street.
// The girl Masha from the city of Che likes two boys from her school, and she can't make a choice between them in any way.
// In order to make a final decision, she decided to assign both boys a date at the same time. Masha wants to choose 
// two monuments on a pedestrian street, near which the boys will be waiting for her. At the same time, she wants to choose 
// such monuments so that the boys do not see each other. Masha knows that because of the fog, the boys will see each other only 
// if they are at a distance of no more than r meters.
// Masha was interested in how many ways there are to choose two different monuments for organizing dates.

// Print one number - the number of ways to choose two monuments for organizing dates.

// https://contest.yandex.ru/contest/27794/problems/D/

let input = readLine()!.split(separator: " ").map{Int($0)!}
let k = input[1]
let arr = readLine()!.split(separator: " ").map{Int($0)!}

var r = 1, l = 0
var count = 0
var n = arr.count
while (r < n && l < n - 1) {
	if (arr[r] - arr[l] <= k){
    	r += 1
    } else {
    	count += n - r
        l += 1
    }  
}
print(count)
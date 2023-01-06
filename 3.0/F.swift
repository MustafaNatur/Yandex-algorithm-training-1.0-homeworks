// Task: F.Alien Genome
// Compiler: Swift 5.3
// Verdict: Execution time limit exceeded
// Status: Partial solution

// import Foundation

// let arr1 = Array(readLine()!).map{String($0)}
// let str2 = readLine()!

// var counter = 0

// for i in 0..<arr1.count - 1 {
//     if (str2.contains(arr1[i] + arr1[i + 1])) {
//         counter+=1
//     }
// }

// print(counter)


// 100% OK solution
let arr1 = Array(readLine()!).map{String($0)}
var arr2:Set<String> = []
let Input = Array(readLine()!).map{String($0)}
	for i in 1..<Input.count{
    	arr2.insert(Input[i - 1]+Input[i])
    } 
var counter = 0
for i in 0..<arr1.count-1 {
    if (arr2.contains(arr1[i]+arr1[i+1])){
        counter+=1
    }
}

print(counter)
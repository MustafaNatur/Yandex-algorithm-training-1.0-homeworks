import Foundation
func read(_ path:String)->String {

	var input = ""
    
	guard let file = freopen(path, "r", stdin) else {return ""}
    
	defer {
		fclose(file)
	}

	while let line = readLine() {
    	input+=line + " "
	}
    
	return input
}

var input = read("input.txt")

let arr = input.components(separatedBy: " ").filter{$0 != ""}

let d = arr.reduce(into: [:]) { dic, v in dic[v, default: 0] += 1}

print(d.sorted( by: { $0.0 < $1.0 }).max{$0.value < $1.value}!.key)
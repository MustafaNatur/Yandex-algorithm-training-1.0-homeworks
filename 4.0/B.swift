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

var d = [String:Int]()
arr.forEach{print(d[$0] ?? "0", terminator: " ") ; d[$0, default: 0]+=1}

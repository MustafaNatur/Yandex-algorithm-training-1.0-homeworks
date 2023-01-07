// In the input file (you can read data from the file input.txt ) the text is recorded.
// A word is considered to be a sequence of non-whitespace characters running in a row,
// words are separated by one or more spaces or end-of-line characters. For each word from this text,
// count how many times it has appeared in this text before.

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

// The text is given. Print the word that occurs most often in this text. 
// If there are several such words, output the one that is smaller in lexicographic order.


// This solution does not work when entering several lines one after the other via new line character
import Foundation
let input = readLine()!

let arr = input.components(separatedBy: [" ", "\n"]).filter{$0 != ""}

let d = arr.reduce(into: [:]) { dic, v in dic[v, default: 0] += 1}

print(d.sorted( by: { $0.0 < $1.0 }).max{$0.value < $1.value}!.key)
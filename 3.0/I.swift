func printer(_ set:Set<String>) {
    print(set.count)
    set.sorted(by: >).forEach{print($0)}
}

var info = [Set<String>]()

let n = Int(readLine()!)!

for _ in 0..<n {
	let m = Int(readLine()!)!
    var newStudent:Set<String> = []
    for _ in 0..<m {
        newStudent.insert(readLine()!)
    }
    info.append(newStudent)
}

var popular = info[0]
var all:Set<String> = []

for i in 0..<info.count{
    all = all.union(info[i])
    popular = popular.intersection(info[i])
}

printer(popular)
printer(all)
func read(_ n: Int) -> Set<Int>{
	var set: Set<Int> = []
    guard n > 0 else {return set}
    for _ in 1...n {
    	set.insert(Int(readLine()!)!)
    }
    return set
}

func printer(_ set1: Set<Int>, _ set2: Set<Int>) {
	let set = set1.subtracting(set2)
    print(set.count)
    print(set.sorted().map{String($0)}.joined(separator: " "))
}

var input = readLine()!.split(separator: " ").map{Int($0)!}
let set1 = read(input[0])
let set2 = read(input[1])

var setInter = set1.intersection(set2)

print(setInter.count)
print(setInter.sorted().map{String($0)}.joined(separator: " "))
printer(set1, set2)
printer(set2, set1)
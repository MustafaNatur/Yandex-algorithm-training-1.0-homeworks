let Buttons = Set(readLine()!.split(separator: " ").map{Int($0)!})
let Number = Set(readLine()!.map{Int(String($0))!})

print(Number.subtracting(Buttons).count)
import Foundation

let n=Int(readLine()!)!
let a=readLine()!.split(separator: " ").map{Int($0)!}
let m=Int(readLine()!)!
let b=readLine()!.split(separator: " ").map{Int($0)!}
var i=0
var j=0
var ansa=0
var ansb=0
var minimum=abs(a[0]-b[0])

while (i < n && j < m) {

    if abs(a[i]-b[j])==0{
        ansa = i
        ansb = j
        break
    }
    
    if abs(a[i]-b[j])<minimum {
    	minimum = abs(a[i]-b[j])
        ansb = j
        ansa = i
    }
    
    if a[i]<b[j] {
        i+=1
    } else { 
        j+=1
    }
    
}
print(a[ansa],b[ansb])
// Gleb loves shopping. Once he caught fire with the idea to pick up a T-shirt and pants so
// as to look as stylish as possible in them. In Gleb's understanding,
// the stylishness of clothes is the greater, the smaller the difference
// in the color of the elements of his clothes.

// There are N (1 ≤ N ≤ 100 000) T-shirts and M (1 ≤ M ≤ 100 000) pants,
// about each element its color is known (an integer from 1 to 10 000 000).
// Нelp Gleb choose one T-shirt and one pair of pants so that the difference
// in their color is as small as possible.



mport Foundation

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
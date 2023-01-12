// https://contest.yandex.ru/contest/27393/problems/A/

import Foundation

if let str = readLine() {
	if let mode = readLine() {
		let arr = str.components(separatedBy: " ").map{Int($0)!}
		let troom = arr[0]
    	let tcond = arr[1]
    	var treal = troom
        
        if ((troom > tcond && mode == "freeze") || (troom < tcond && mode == "heat") ||  mode == "auto") {
			treal = tcond
		}
    	print(treal);
	}
}
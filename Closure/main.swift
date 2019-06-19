//
//  main.swift
//  Closure
//
//  Created by MacStudent on 2019-06-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
func add(a: Int,b: Int) -> Int
{
    return a + b
}

let c = add(a: 10,b: 20)

print("c is :\(c)")

var funcAdd :(Int, Int) -> Int
funcAdd = add(a:b:)

let cc = funcAdd(10,20)

print("cc is:\(cc)")


//------pointing functionss---------

func sub(a: Int,b: Int) -> Int
{
    return a - b
}

let funcSub = sub(a:b:)

let subtraction = funcSub(20,10)

print("S \(subtraction)")

var mul = {
    (a:Int, b:Int) -> Int in
    return a * b
}
let m = mul(10, 20)
print("m is  \(m)")

funcAdd = mul

print("Mul is \(funcAdd(2, 5))")

let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]

func sortString( _ s1:String, _ s2: String) -> Bool {
    
    return s1 < s2

}
print(names)

//-----sorting--------
var reverseName = names.sorted(by: sortString)

print(reverseName)

reverseName = names.sorted(by:{
    (a: String,b:String) -> Bool in
    
    return a > b

})

print(reverseName)

//
    reverseName = names.sorted(by:
{
    $0 > $1
})
print(reverseName)


names.sorted(by: <)
print(names)

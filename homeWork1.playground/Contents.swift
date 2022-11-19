import UIKit

//1. Квадратное уровнение

let a: Double = 1
let b: Double = 2
let c: Double = -3
let d = pow(b, 2) - 4 * a * c
let x1 = (-b + sqrt(d)) / (2 * a)
let x2 = (-b - sqrt(d)) / (2 * a)
 


//2. Найти площадь, периметр и гипотенузу треугольника

var v:Double = 4
var n:Double = 6
var m:Double = 8
var p:Double
p = v + n + m
m = sqrt(pow(v, 2) + pow(n, 2))
print("Пириметр равен \(p)")
print("Гипотенуза равна \(m)")

//3. Найти сумму вклада через 5 лет

var deposit = 1000
var percent = 15
percent = percent / 100
var result1 = deposit + (deposit * percent)
var result2 = result1 + (result1 * percent)
var result3 = result2 + (result2 * percent)
var result4 = result3 + (result3 * percent)
var result5 = result4 + (result4 * percent)
var counter = 1
var time = [result1, result2, result3, result4, result5]
for i in time {
    print("After \(counter) year deposit amount will be \(i)")
    counter += 1
}

let sum = 100_000
let percent1 = 10

let year1 = sum + (sum * 10 / 100)
let year2 = year1 + (year1 * 10 / 100)
let year3 = year2 + (year2 * 10 / 100)
let year4 = year3 + (year3 * 10 / 100)
let year5 = year4 + (year4 * 10 / 100)

year5



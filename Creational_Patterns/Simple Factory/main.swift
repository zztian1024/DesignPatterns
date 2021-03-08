//
//  main.swift
//  Simple Factory
//
//  Created by Tian on 2021/2/24.
//

import Foundation

print("Hello, World!")

var opt1 = OperatorFactory.creatOperator("+")
opt1.operand1 = 20
opt1.operand2 = 10
print(opt1.getResult()) // 30.0

var opt2 = OperatorFactory.creatOperator("-")
opt2.operand1 = 20
opt2.operand2 = 10
print(opt2.getResult()) // 10.0

var opt3 = OperatorFactory.creatOperator("*")
opt3.operand1 = 20
opt3.operand2 = 10
print(opt3.getResult()) // 200.0

var opt4 = OperatorFactory.creatOperator("/")
opt4.operand1 = 20
opt4.operand2 = 10
print(opt4.getResult()) // 2.0

var opt5 = OperatorFactory.creatOperator("3")
opt5.operand1 = 10
print(opt5.getResult()) // 1000.0


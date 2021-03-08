//
//  main.swift
//  Factory Method
//
//  Created by Tian on 2021/2/24.
//

import Foundation

print("Hello, World!")

let fileLogger: Logger = FileLoggerFactory.logger()
fileLogger.logMessage("Something")

let terminalLogger: Logger = TerminalLoggerFactory.logger()
terminalLogger.logMessage("Something else....")

var addition:Operator = AddOperatorFactory.creatOperator()
addition.operand1 = 20
addition.operand2 = 10
print(addition.getResult())

var subtraction:Operator = SubtractionFactory.creatOperator()
subtraction.operand1 = 20
subtraction.operand2 = 10
print(subtraction.getResult())

var multiplication:Operator = MultiplicationFactory.creatOperator()
multiplication.operand1 = 20
multiplication.operand2 = 10
print(multiplication.getResult())

var division:Operator = DivisionFactory.creatOperator()
division.operand1 = 20
division.operand2 = 10
print(division.getResult())



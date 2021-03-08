//
//  Operation.swift
//  Factory Method
//
//  Created by Tian on 2021/2/24.
//

import Foundation

protocol Operator {
    var operand1: Double { get set }
    var operand2: Double { get set }
    func getResult() -> Double;
}

class MyOperator : Operator {
    var operand1: Double = 0.0
    var operand2: Double = 0.0
    
    func getResult() -> Double {
        return 0.0
    }
}

class Addition: MyOperator {
    override func getResult() -> Double {
        return operand1 + operand2
    }
}

class Subtraction: MyOperator {
    override func getResult() -> Double {
        return operand1 - operand2
    }
}

class Multiplication: MyOperator {
    override func getResult() -> Double {
        return operand1 * operand2
    }
}

class Division: MyOperator {
    override func getResult() -> Double {
        return operand1 / operand2
    }
}

protocol OperatorFactory {
    static func creatOperator() -> Operator
}

class AddOperatorFactory : OperatorFactory {
    static func creatOperator() -> Operator {
        return Addition()
    }
}

class SubtractionFactory : OperatorFactory {
    static func creatOperator() -> Operator {
        return Subtraction()
    }
}

class MultiplicationFactory : OperatorFactory {
    static func creatOperator() -> Operator {
        return Multiplication()
    }
}

class DivisionFactory : OperatorFactory {
    static func creatOperator() -> Operator {
        return Division()
    }
}

//
//  ViewController.swift
//  Creational_Patterns
//
//  Created by Tian on 2021/2/24.
//

import UIKit

enum Operator {
    case Add, Sub, Mul, Div
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        abc()
        //    30.0
        //     10.0
        //     200.0
        //     2.0
    }
    
    func calculate(_ num1: Double, num2: Double, opt:Operator) -> Double{
        
        var res:Double = 0.0
        switch opt {
        case .Add:
            res = num1 + num2
        case .Sub:
            res = num1 - num2
        case .Mul:
            res = num1 * num2
        case .Div:
            res = num1 / num2
        }
        return res
    }
    
    func abc() {
        let num1 = 20.0, n = 10.0
        let res1 = calculate(num1, num2: n, opt: .Add)
        let res2 = calculate(num1, num2: n, opt: .Sub)
        let res3 = calculate(num1, num2: n, opt: .Mul)
        let res4 = calculate(num1, num2: n, opt: .Div)
        print("\(res1) \n \(res2) \n \(res3) \n \(res4)")
    }

}


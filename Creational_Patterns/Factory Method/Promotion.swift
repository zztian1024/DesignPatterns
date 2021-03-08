//
//  Promotion.swift
//  Factory Method
//
//  Created by Tian on 2021/2/24.
//

import Foundation

protocol Payment {
    func pay()
}

class CrashPayment: Payment {
    func pay() {
        
    }
}

class WechatPayment: Payment {
    func pay() {
        
    }
}

class AliPayment: Payment {
    func pay() {
        
    }
}

///////////////////////////////////////////////////
/// Promotion
///////////////////////////////////////////////////

protocol Promotion {
    func accept()
}

class PromotionRebate: Promotion {
    func accept() {
        
    }
}

class PromotionNormal: Promotion {
    func accept() {
        
    }
}

class PromotionReturn: Promotion {
    func accept() {
        
    }
}

class PromotionFactory {
//    func createPromotion() -> Promotion {
//        return 
//    }
}


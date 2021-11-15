//
//  AppMoney.swift
//  Candy
//
//  Created by Vitor Hugo on 15/11/21.
//

import Foundation

class AppMoney: ObservableObject {
    @Published var money: Int = 0 {
        didSet {
            print("Money changed: \(money)")
        }
    }
    @Published var one: Int = 0 {
        didSet {
            print("Money one changed: \(one)")
        }
    }
    @Published var two: Int = 0 {
        didSet {
            print("Money two changed: \(two)")
        }
    }
    @Published var three: Int = 0 {
        didSet {
            print("Money three changed: \(three)")
        }
    }
    
    @Published var candyOne: Int = 0 {
        didSet {
            print("candy one changed: \(candyOne)")
        }
    }
    @Published var candyTwo: Int = 0 {
        didSet {
            print("candy two changed: \(candyTwo)")
        }
    }
    @Published var candyThree: Int = 0 {
        didSet {
            print("candy three changed: \(candyThree)")
        }
    }
    
    
    func moneyTypes(type: MoneyType) {
        switch type {
        case .One:
            if money <= 14 {
                money = money + 1
                one = one + 1
            } else {
                print("you cannot add more money one")
            }
        case .Two:
            if money <= 13 {
                money = money + 2
                two = two + 1
            } else {
                print("you cannot add more money two")
            }
        case .Three:
            if money <= 12 {
                money = money + 3
                three = three + 1
            } else {
                print("you cannot add more money three")
            }
        }
    }
    
    func removeMoney(toRemove: Int) {
        
        var moneyPreview = money - toRemove
        
        one = 0
        two = 0
        three = 0
        
        while moneyPreview != 0 {
            if (moneyPreview >= 3) {
                three = three + 1
                moneyPreview = moneyPreview - 3
            } else if (moneyPreview >= 2) {
                two = two + 1
                moneyPreview = moneyPreview - 2
            } else if (moneyPreview >= 1) {
                one = one + 1
                moneyPreview = moneyPreview - 1
            }
        }
        money = money - toRemove
    }
    
    func removePreview(toRemove: Int) -> (one: Int, two: Int, three: Int) {
        
        var moneyPreview = money - toRemove
        var previewOne: Int = one
        var previewTwo: Int = two
        var previewThree: Int = three
        
        previewOne = 0
        previewTwo = 0
        previewThree = 0
        
        while moneyPreview != 0 {
            if (moneyPreview >= 3) {
                previewThree = previewThree + 1
                moneyPreview = moneyPreview - 3
            } else if (moneyPreview >= 2) {
                previewTwo = previewTwo + 1
                moneyPreview = moneyPreview - 2
            } else if (moneyPreview >= 1) {
                previewOne = previewOne + 1
                moneyPreview = moneyPreview - 1
            }
        }
        return (previewOne, previewTwo, previewThree)
    }
}

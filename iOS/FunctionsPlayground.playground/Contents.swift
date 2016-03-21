//: Playground - noun: a place where people can play

import UIKit

var bankAccount = 600.00
var itemCost = 100.00

func canPurchase(amount: Double) -> Bool {
    if bankAccount > itemCost {
        return true
    }
    return false
}

func process(cost: Double) {
    bankAccount -= itemCost
}

if canPurchase(bankAccount) {
    print("Purchased!")
} else{
    print("Insufficient Funds")
}

func declareWinner(playerA: Int, playerB: Int) {
    if playerA > playerB {
        print("Player A Wins")
    } else if playerB > playerA {
        print("Player B Wins")
    } else {
        print("Tie")
    }
}

// The first variable is the only one which doesnt require the variable name
declareWinner(50, playerB: 15)
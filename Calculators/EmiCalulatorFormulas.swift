//
//  EmiCalulator.swift
//  LoanCalculator
//
//  Created by Aniket Bhondave on 15/02/21.
//

import Foundation

//EMI Calculator Business Logic

func emiCalulator(LoanAmount:Double,IntrestRate:Double,Tenure:Double) -> Double
{
    let interestRate = IntrestRate/1200
    let EMI = LoanAmount * interestRate / (1 - (pow(1/(1+interestRate),Tenure)))
    
    return EMI
}

func totalPayment(emi:Double,Tenure:Double) -> Double {
    
    return emi * Tenure
}

func totalIntrestPayable(TotalPayment:Double,LoanAmount:Double) -> Double {
    
    return TotalPayment - LoanAmount
}


func callEMICalculator(loanAmount:Double,intrestRate:Double,tenure:Double)-> Double
{
    let installaments:Double
let results = emiCalulator(LoanAmount: loanAmount, IntrestRate: intrestRate, Tenure: tenure)
    
let totalPayments = totalPayment(emi: results, Tenure: tenure)
    
let intrestPaid = totalIntrestPayable(TotalPayment: totalPayments, LoanAmount: loanAmount)

    if results.isInfinite || results.isNaN
    {
        installaments = 0
    }else
    {
        installaments = Double(Int(results))
        
    }
    return installaments
}

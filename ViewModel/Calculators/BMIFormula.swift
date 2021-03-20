//
//  BMIFormula.swift
//  LoanCalculator
//
//  Created by Aniket Bhondave on 12/03/21.
//

import Foundation


func callBMICalculator(age:Double,heightInCm:Double,weightInKg:Double)-> Double
{
    let roundOfAge = Int(age)
    let heightToMeters = heightInCm/100
    let roundOfweightInKg = Int(weightInKg)
    
    if roundOfAge<=0 || heightToMeters<=0 || roundOfweightInKg<=0
    {
        return 0
    }else
    {
        return Double(roundOfweightInKg)/Double((heightToMeters*heightToMeters))
    }

    
}


extension Double {
    /// Rounds the double to decimal places value
    func rounded(toPlaces places:Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return (self * divisor).rounded() / divisor
    }
}

//
//  EmiCalculatorUIView.swift
//  LoanCalculator
//
//  Created by Aniket Bhondave on 15/02/21.
//

import SwiftUI

struct EmiCalculatorUIView: View {
    
    @State private var loanAmount:Double = 0
    @State private var intrestRate:Double = 0
    @State private var tenure:Double = 0
    @State private var EMI:Double = 0
    
    var body: some View {
        
            ZStack{
                ScrollView{
                        Text("Estimated Monthly Installament")
                        HStack{
                            Text("INR \(Int(EMI))").fontWeight(.bold).font(.system(size: 40))
                            Text("/mt").font(.system(size: 16)).padding(.top)
                        }
                    
                    Spacer(minLength: 80)
                    VStack{
                        

                        
                        Text("Loan Amount").frame(width: UIScreen.main.bounds.width, height: 40, alignment: .leading).padding(.leading,40).font(.title3)

                        Slider(value: $loanAmount,in: 1...9999999,step:0.5).padding(.all,20).frame(width: UIScreen.main.bounds.width, height: 50, alignment: .center).onChange(of: loanAmount, perform: { value in

                            if loanAmount.isLessThanOrEqualTo(0)
                            {

                            }else
                            {
                                let result = callEMICalculator(loanAmount: loanAmount, intrestRate: intrestRate, tenure: tenure)
                                 EMI = Double(Int(result))

                            }


                        })
                        Text("\(Int(loanAmount))").frame(width: UIScreen.main.bounds.width, height: 40, alignment: .trailing).padding(.trailing,20)

                        
                    }
                    VStack{
                        
                        let intrest = String(format: "%.2f", intrestRate)
                        
                        Text("Intrest Rate").frame(width: UIScreen.main.bounds.width, height: 40, alignment: .leading).padding(.leading,40).font(.title3)
                        
                        Slider(value: $intrestRate,in: 1...25,step:0.1).padding(.all,20).frame(width: UIScreen.main.bounds.width, height: 50, alignment: .center)
                        
                        Text("\(intrest)").frame(width: UIScreen.main.bounds.width, height: 40, alignment: .trailing).padding(.trailing,40)
                        
                        
                    }
                    
                    VStack{
                        
                        Text("Tenure").frame(width: UIScreen.main.bounds.width, height: 40, alignment: .leading).padding(.leading,40).font(.title3)
                        
                        Slider(value: $tenure,in: 1...500,step:1).padding(.all,20).frame(width: UIScreen.main.bounds.width, height: 50, alignment: .center).onChange(of: tenure, perform: { value in
                            
                           let result = callEMICalculator(loanAmount: loanAmount, intrestRate: intrestRate, tenure: tenure)
                            EMI = Double(Int(result))
                            
                        })
                        Text("\(Int(tenure))").frame(width: UIScreen.main.bounds.width, height: 40, alignment: .trailing).padding(.trailing,40)
                        
                        
                    }
                    
                    
                }.background(Color(UIColor.white))
                .edgesIgnoringSafeArea(.bottom)
                .cornerRadius(20)
            }
            
        
    }
    

}

struct EmiCalculatorUIView_Previews: PreviewProvider {
    static var previews: some View {
        EmiCalculatorUIView()
    }
}




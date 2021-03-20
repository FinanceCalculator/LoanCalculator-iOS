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
                    VStack
                    {
                        Text("Estimated Monthly Installament")
                            .padding(.bottom,10)
                            .font(.title3)
                        
                        HStack{
                            Text("INR \(Int(EMI))").fontWeight(.bold).font(.system(size: 40))
                            Text("/mt").font(.system(size: 16)).padding(.top)
                            
                        }
                    }.frame(width: UIScreen.main.bounds.width-20, height: 150, alignment: .center)
                    .background(Color.neuBackground)
                    .cornerRadius(10)
                    .shadow(color: .dropShadow, radius: 15, x: 10, y: 10)
                    .shadow(color: .dropLight, radius: 15, x: -10, y: -10)
                    .padding(.top,100)
                    .padding(.bottom,30)
                    
                    
                
                    VStack{
                    
                        Text("Loan Amount").fontWeight(.semibold).font(.system(size: 17)).padding(.all)
                            .frame(width: UIScreen.main.bounds.width, height: 20, alignment: .leading).padding(.leading,40).font(.title3).padding(.top,10)
                            
                        
                        Slider(value: $loanAmount,in: 1...9999999,step:0.5).padding(.all,30).frame(width: UIScreen.main.bounds.width, height: 50, alignment: .center).onChange(of: loanAmount, perform: { value in

                            if loanAmount.isLessThanOrEqualTo(0)
                            {

                            }else
                            {
                                let result = callEMICalculator(loanAmount: loanAmount, intrestRate: intrestRate, tenure: tenure)
                                 EMI = Double(Int(result))

                            }


                        })
                        Text("\(Int(loanAmount))").frame(width: UIScreen.main.bounds.width, height: 8, alignment: .trailing).padding(.trailing,60).padding(.bottom,10)

                    }
                    
                    VStack{
                        
                        let intrest = String(format: "%.2f", intrestRate)
                        
                        Text("Intrest Rate").fontWeight(.semibold).font(.system(size: 17)).padding(.all)
                            .frame(width: UIScreen.main.bounds.width, height: 40, alignment: .leading).padding(.leading,40).font(.title3)
                            
                        Slider(value: $intrestRate,in: 1...25,step:0.1).padding(.all,30).frame(width: UIScreen.main.bounds.width, height: 50, alignment: .center)
                        
                        Text("\(intrest)").frame(width: UIScreen.main.bounds.width, height: 8, alignment: .trailing).padding(.trailing,60)
                        
                        
                    }
                    
                    VStack{
                        
                        Text("Tenure").fontWeight(.semibold).font(.system(size: 17)).padding(.all)
                            .frame(width: UIScreen.main.bounds.width, height: 40, alignment: .leading).padding(.leading,40).font(.title3)
                        
                        Slider(value: $tenure,in: 1...500,step:1).padding(.all,30).frame(width: UIScreen.main.bounds.width, height: 50, alignment: .center).onChange(of: tenure, perform: { value in
                            
                           let result = callEMICalculator(loanAmount: loanAmount, intrestRate: intrestRate, tenure: tenure)
                            EMI = Double(Int(result))
                            
                        })
                        Text("\(Int(tenure))").frame(width: UIScreen.main.bounds.width, height: 8, alignment: .trailing).padding(.trailing,60)
                        
                        
                    }
                    Spacer(minLength:50)
                    VStack
                    {
                        Button {
                            print("Button tapped!")
                        } label:{
                            Text("Show Details")
                        }.font(.title2).frame(width: UIScreen.main.bounds.width-200, height: 60, alignment: .center)
                        .background(Color.neuBackground)
                        .cornerRadius(10)
                        .shadow(color: .dropShadow, radius: 15, x: 10, y: 10)
                        .shadow(color: .dropLight, radius: 15, x: -10, y: -10)
                   
                        
                    }
                   
                    
                    
                }
                
                .edgesIgnoringSafeArea(.bottom)
                .ignoresSafeArea()
                .cornerRadius(20)
                
            }.background(Color.neuBackground)
            
            .ignoresSafeArea()
            
            
    }
    
    
}

struct EmiCalculatorUIView_Previews: PreviewProvider {
    static var previews: some View {
        EmiCalculatorUIView()
    }
}




//
//  DashboardView.swift
//  LoanCalculator
//
//  Created by Aniket Bhondave on 28/01/21.
//

import SwiftUI



struct DashboardView: View {
    
    //intialized Customized NavigationBar
    init() {
        _ = NavigationBarCustomized()
    }
    
    //set layout for Grid item
    let layout = [GridItem(.adaptive(minimum: 120))]
    
    var body: some View {
        
        NavigationView{
            
            ZStack{
                Color(hex: customBackground)
                    .ignoresSafeArea(.all)
                ScrollView{
                    
                    LazyVGrid(columns: layout,spacing:30, content:
                                {
        NavigationLink(
            destination: EmiCalculatorUIView(),
            label: {
                CardView(image: "calculator", textName: "Finance")                   })
        NavigationLink(
            destination: BMICalculator(),
            label: {
                CardView(image: "fitness", textName: "Fitness")                })
                
                CardView(image: "salary", textName: "Salary")
                CardView(image: "others", textName: "Others")
                                    
                                }).padding(.top, 30)
                        .padding(.leading, 20)
                        .padding(.trailing, 20)
                        
//                    Text("Value of your Money")
//                        .frame(width: UIScreen.main.bounds.width-60, height: 20, alignment: .leading)
//                        .font(.system(size: 24))
//                        .padding(.top,30)
                        
//                    LazyVGrid(columns: layout,spacing:40, content: {
//                        CardView(image: "add", textName: "Money Value")
//                        CardView(image: "add", textName: "Money Value")
//                        CardView(image: "add", textName: "Money Value")
//                        CardView(image: "add", textName: "Money Value")
//                    }).padding(.top, 30)
//                    .padding(.leading, 20)
//                    .padding(.trailing, 20)
                    
                }.navigationBarTitle("Calculator")
                .background(Color.neuBackground)
                .edgesIgnoringSafeArea(.bottom)
                .cornerRadius(20)
                
            
            }
            
            
        }
    }
    
}


struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            DashboardView()
            
        }
        
    }
}





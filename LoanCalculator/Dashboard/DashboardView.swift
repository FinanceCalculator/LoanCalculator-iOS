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
                                    CardView(image: "add", textName: "EMI")
                                    CardView(image: "add", textName: "LOAN")
                                    CardView(image: "add", textName: "Intrest rate")
                                    CardView(image: "add", textName: "Loan period")
                                    
                                }).padding(.top, 30)
                        .padding(.leading, 20)
                        .padding(.trailing, 20)
                        
                    Text("Value of your Money")
                        .frame(width: UIScreen.main.bounds.width-60, height: 20, alignment: .leading)
                        .font(.system(size: 30))
                       
                        .padding(.top,30)
                        
                    
                }.navigationBarTitle("Loan Calculator")
                .background(Color(UIColor.white))
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



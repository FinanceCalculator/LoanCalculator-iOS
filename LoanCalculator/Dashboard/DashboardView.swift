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
                Color(hex: "#F3F3F3")
                    .ignoresSafeArea(.all)
                ScrollView{
                    
                    LazyVGrid(columns: layout,spacing:30, content:
                                {
                                    CardView(image: "add", textName: "EMI")
                                    CardView(image: "add", textName: "LOAN")
                                    CardView(image: "add", textName: "Intrest rate")
                                    CardView(image: "add", textName: "Loan period")
                                    
                                }).padding(.top, 10)
                        .padding(.leading, 34)
                        .padding(.trailing, 34)
                    
                }.navigationBarTitle("Loan Calculator")
                .background(Color(UIColor.white))
                .edgesIgnoringSafeArea(.bottom)
                
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



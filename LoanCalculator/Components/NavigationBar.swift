//
//  NavigationBar.swift
//  LoanCalculator
//
//  Created by Aniket Bhondave on 29/01/21.
//

import SwiftUI

struct NavigationBarCustomized: View {
    
    init() {
        UINavigationBar.appearance().backgroundColor = .clear
//        UINavigationBar.appearance().largeTitleTextAttributes = [
//            //.foregroundColor:UIColor.darkGray,
//            //.font: UIFont(name:"Papyrus",size:40)!
//        ]
    }
    
    var body: some View {
        Text("")
    }
}

struct NavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarCustomized()
    }
}

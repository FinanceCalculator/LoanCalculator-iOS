//
//  customSlider.swift
//  LoanCalculator
//
//  Created by Aniket Bhondave on 16/02/21.
//

import Foundation
import SwiftUI

struct CustomSlider: View {
    
    var sliderName:String
    @State var sliderValue:Double = 0
    
var body: some View
    {
    
    VStack{
        
        Text(sliderName).frame(width: UIScreen.main.bounds.width, height: 40, alignment: .leading).padding(.leading,40).font(.title3)

        Slider(value: $sliderValue,in: 1...9999999,step:0.5).padding(.all,20).frame(width: UIScreen.main.bounds.width, height: 50, alignment: .center)
        
        Text("\(Int(sliderValue))").frame(width: UIScreen.main.bounds.width, height: 40, alignment: .trailing).padding(.trailing,20)

    }
    }
    
}

struct CustomSlider_Previews: PreviewProvider {
    static var previews: some View {
        CustomSlider(sliderName: "Slider",sliderValue: 0.0)
    }
}

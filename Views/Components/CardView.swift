//
//  CardView.swift
//  LoanCalculator
//
//  Created by Aniket Bhondave on 22/01/21.
//

import SwiftUI


struct CardView: View {
    
    var image:String
    var textName:String
    
    var body: some View
    {
        //Vertical Stack
    VStack{
            //Horizontal Stack
            HStack{
                    Image(image)
                    .resizable()
                    .frame(width: 80, height: 80, alignment: .center)
                    }
                    .padding(10)
        Text(textName)
            .fontWeight(.light)
            .font(.custom(customFont, size: 20))
            .foregroundColor(Color(hex:customTextColor))
       
    }.frame(width: UIScreen.main.bounds.width/2.6, height: UIScreen.main.bounds.width/2.5, alignment: .center)
        .background(Color(hex: customBackground))
        .cornerRadius(20)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(image: "add", textName: "EMI")
    }
}



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
                    .frame(width: 50, height: 50, alignment: .center)
                    }
                    .padding(10)
                    Text(textName)
                        .fontWeight(.medium)
                        .font(.custom("Chalkboard SE", size: 20))
                        .foregroundColor(Color(hex:"273A5F"))
    }.frame(width: UIScreen.main.bounds.width/2.6, height: UIScreen.main.bounds.width/2.5, alignment: .center)
        .background(Color(hex: "#F3F3F3"))
        .cornerRadius(20)
    }
    
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(image: "add", textName: "EMI")
    }
}



//
//  BMICalculator.swift
//  LoanCalculator
//
//  Created by Aniket Bhondave on 12/03/21.
//

import SwiftUI

struct BMICalculator: View {
    
    @State private var age:Double = 0
    @State private var height:Double = 0
    @State private var weight:Double = 0
    @State private var BMI:Double = 0
    @State private var healthStatus:String = "BMI 0.0"
    @State private var bmiColorCode:Color = Color.neuBackground
    
    var body: some View {
        
        
        ZStack{
            ScrollView{
                VStack
                {
                    
                    Text("Body Mass Index").foregroundColor(.gray)
                        .padding(.bottom,5)
                        .padding(.top,5)
                        .font(.title3)
                    
                    Text("BMI \(String(format: "%.1f", BMI)) ").fontWeight(.bold).font(.system(size: 40)).padding(.bottom,10).foregroundColor(bmiColorCode)
                    
                    
                    Text(healthStatus).fontWeight(.bold).font(.system(size: 20))
                        .padding(.bottom,10).foregroundColor(bmiColorCode)
                        
                        
                    
                }.frame(width: UIScreen.main.bounds.width-20, height: 150, alignment: .center)
                .background(Color.neuBackground)
                .cornerRadius(10)
                .shadow(color: .dropShadow, radius: 15, x: 10, y: 10)
                .shadow(color: .dropLight, radius: 10, x: -10, y: -10)
                .blendMode(.overlay)
                .padding(.top,100)
                .padding(.bottom,30)
                
                
                
            
                VStack{
                
                    Text("Age").fontWeight(.semibold).font(.system(size: 17)).padding(.all)
                        .frame(width: UIScreen.main.bounds.width, height: 20, alignment: .leading).padding(.leading,40).font(.title3).padding(.top,10)
                        
                    
                    Slider(value: $age,in: 1...120,step:1).padding(.all,30).frame(width: UIScreen.main.bounds.width, height: 50, alignment: .center).onChange(of: age, perform: { value in

                        if age.isLessThanOrEqualTo(0)
                        {

                        }else
                        {
                            let result = callBMICalculator(age: age, heightInCm: height, weightInKg: weight)
                             BMI = result.rounded(toPlaces: 1)
                            setColorCode()
                            

                        }


                    })
                    Text("\(Int(age)) Yrs.").foregroundColor(.gray).fontWeight(.semibold).font(.system(size: 17)).frame(width: UIScreen.main.bounds.width, height: 8, alignment: .trailing).padding(.trailing,60).padding(.bottom,10)

                }.frame(width: UIScreen.main.bounds.width, height: 150, alignment: .center)
                .background(Color.neuBackground)
                .cornerRadius(10)
                .shadow(color: .dropShadow, radius: 15, x: 10, y: 10)
                .shadow(color: .dropLight, radius: 10, x: -10, y: -10)
                .blendMode(.overlay)
                .padding(.bottom,20)
                
                
                VStack{
                    
                    //let intrest = String(format: "%.2f", height)
                    
                    HStack
                    {
                        Text("Height ").fontWeight(.semibold).font(.system(size: 17)).padding(.leading,40)
                            .frame(width: UIScreen.main.bounds.width/2, height: 40, alignment: .leading).font(.title3)
                        
                        let cmToFoot = height/30.48
                        //let foot = floor(cmToInches/12)
                        //let inches = (height - 12 * foot)
                        
                        let roundedFoot = String(format: "%.1f",cmToFoot)
                        //let roundedInches = String(format: "%01.f",inches)
                        
                        
                        Text("\(roundedFoot) Foot").foregroundColor(.gray).fontWeight(.semibold).font(.system(size: 17)).padding(.trailing,35)
                            .frame(width: UIScreen.main.bounds.width/2, height: 40, alignment: .trailing).font(.title3)
                        
                       
                        
                        
                    }.padding(.top,20)
                    
                   
                        
                    Slider(value: $height,in: 1...300,step:1).padding(.all,30).frame(width: UIScreen.main.bounds.width, height: 50, alignment: .center).onChange(of: age, perform: { value in

                        if age.isLessThanOrEqualTo(0) && height.isLessThanOrEqualTo(0)
                        {
                            BMI = 0.0
                        }else
                        {
                            let result = callBMICalculator(age: age, heightInCm: height, weightInKg: weight)
                             BMI = result.rounded(toPlaces: 1)
                            setColorCode()
                        }


                    })
                    
                    
                    
                    Text("\(Int(height)) Cm").foregroundColor(.gray).fontWeight(.semibold).font(.system(size: 17)).frame(width: UIScreen.main.bounds.width, height: 8, alignment: .trailing).padding(.trailing,60)
                    
                    
                }.frame(width: UIScreen.main.bounds.width, height: 150, alignment: .center)
                .background(Color.neuBackground)
                .cornerRadius(10)
                .shadow(color: .dropShadow, radius: 15, x: 10, y: 10)
                .shadow(color: .dropLight, radius: 10, x: -10, y: -10)
                .blendMode(.overlay)
                .padding(.bottom,20)
                
                VStack{
                    
                    HStack
                    {
                        Text("Weight ").fontWeight(.semibold).font(.system(size: 17)).padding(.leading,40)
                            .frame(width: UIScreen.main.bounds.width/2, height: 40, alignment: .leading).font(.title3)
                        
                        let kgToLbs = weight*2.205
                        //let foot = floor(cmToInches/12)
                        //let inches = (height - 12 * foot)
                        
                        let roundedLbs = String(format: "%.1f",kgToLbs)
                        //let roundedInches = String(format: "%01.f",inches)
                        
                        
                        Text("\(roundedLbs) Lbs").foregroundColor(.gray).fontWeight(.semibold).font(.system(size: 17)).padding(.trailing,35)
                            .frame(width: UIScreen.main.bounds.width/2, height: 40, alignment: .trailing).font(.title3)
                        
                       
                        
                        
                    }.padding(.top,20)
                    
                    Slider(value: $weight,in: 1...600,step:1).padding(.all,30).frame(width: UIScreen.main.bounds.width, height: 50, alignment: .center).onChange(of: weight, perform: { value in
                        
                        let result = callBMICalculator(age: age, heightInCm: height, weightInKg: weight)
                        BMI = result.rounded(toPlaces: 1)
                        setColorCode()
                    })
                    Text("\(Int(weight)) Kg").foregroundColor(.gray).fontWeight(.semibold).font(.system(size: 17)).frame(width: UIScreen.main.bounds.width, height: 8, alignment: .trailing).padding(.trailing,60)
                    
                    
                    
                    
                }.frame(width: UIScreen.main.bounds.width, height: 150, alignment: .center)
                .background(Color.neuBackground)
                .cornerRadius(10)
                .shadow(color: .dropShadow, radius: 15, x: 10, y: 10)
                .shadow(color: .dropLight, radius: 10, x: -10, y: -10)
                .blendMode(.overlay)
                .padding(.bottom,20)
                
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
            .background(Color.neuBackground)
            
        }.background(Color.neuBackground)
        
        .ignoresSafeArea()
        
        
}
   
    func setColorCode()
    {
        if (BMI >= 0) && (BMI <= 16) || (BMI >= 30) && (BMI <= 50)
        {
            if BMI <= 16
            {
                healthStatus = "UNDER WEIGHT"
            }else if BMI >= 35
            {
                healthStatus = "OBEASE"
            }
            bmiColorCode = Color.red
            
        }else if (BMI >= 16) && (BMI <= 17) || (BMI >= 25) && (BMI <= 30)
        {
            
            healthStatus = "MODRATE THINESS"
                
            if BMI >= 25
            {
                
                healthStatus = "OVER WEIGHT"
            }
            
            bmiColorCode = Color.yellow
            
        }else if (BMI >= 18) && (BMI <= 24)
        {
            healthStatus = "NORMAL"
            bmiColorCode = Color.green
        }
    }
    
}

struct BMICalculator_Previews: PreviewProvider {
    static var previews: some View {
        BMICalculator()
    }
}

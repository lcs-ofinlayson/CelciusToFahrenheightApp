//
//  CalculatorView.swift
//  CelciusToFahrenheightApp
//
//  Created by Oliver Finlayson on 2023-01-17.
//

import SwiftUI

struct CalculatorView: View {
    //MARK: Stored Properties
    //@State is a property weapper
    //Telling SwiftUI to "watch" these properties for changes
    //Update the user interface when they change
    @State var fahrenheit: Double = 25
    
    //MARK: Computed Properties
    var celcius: Double {
        (fahrenheit - 32) * (5/9)
    }
    
    var body: some View {
        VStack(spacing: 10) {
            HStack {
                Image("Rectangle")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 250)
                Spacer()
            }
            
            
            Group {
                //Width
                Text("Fahrenheit")
                    .font(.title2)
                    .bold()
                //Use string interpolation \() to display within
                Text("\(fahrenheit)")
                Slider(value: $fahrenheit,
                       in: -100...100,
                       label: { Text("fahrenheit")},
                       minimumValueLabel: { Text("-100")},
                       maximumValueLabel: { Text("100")})
            }
            
            Group {
                //Length
                Text("Celcius")
                    .font(.title2)
                    .bold()
                //Use string interpolation \() to display within
                Text("\(celcius)")
                
                //Slider to control length
            }
        }
    }
}

struct CalculatorView_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorView()
    }
}

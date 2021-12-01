//
//  SphereView.swift
//  FiguresHelper
//
//  Created by Franka Keil on 2021-12-01.
//

import SwiftUI

struct SphereView: View {
    
    // MARK: Stored properties
    @State var radius: Double = 15.00
    
    // MARK: Computed properties
    var area: Double{
        return 4 * Double.pi * radius * radius
    }
    
    var volume: Double{
        return 4/3 * Double.pi * radius * radius * radius
    }
    
    // User interface
    var body: some View {
        VStack(alignment: .leading, spacing: 20){
            
            Text("radius")
                .bold()
            
            Group{
                
                HStack{
                    Spacer()
                    Text("\(radius)")
                        .font(.title2)
                        .bold()
                    Spacer()
                    
                }
                
                Slider(value: $radius,
                       in: 0.0...100.0,
                       step: 1.0,
                       label: {
                    Text("Radius")
                },
                       minimumValueLabel: {
                    Text("0.0")
                },
                       maximumValueLabel: {
                    Text("100.0")
                })
            }
            
            Text("Area:")
                .bold()
            
            Text("\(area) square units")
                .font(.title2)
            
            Text("Volume: ")
                .bold()
            
            Text("\(volume) cubed units")
                .font(.title2)
            
            
            Spacer()
        }
        .padding()
        .navigationTitle("Sphere")
    }
}

struct SphereView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            SphereView()
        }
    }
}

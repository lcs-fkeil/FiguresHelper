//
//  ContentView.swift
//  FiguresHelper
//
//  Created by Franka Keil on 2021-12-01.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView{
            HStack {
                VStack(alignment: .leading){
                    Text("Circle")
                        .bold()
                        .font(.largeTitle)
                        .padding(.bottom, 3)
                    Text("Radius")
                        .font(.title)
                        .padding(.bottom, 3)
                    
                    Text("Radius (cm)")
                        .bold()
                        .padding(.bottom, 10)

                    Slider(value: .constant(0.0),
                           in: 0.0...100.0,
                           label: {
                                Text("Opacity")
                    },
                           minimumValueLabel: {
                                Text("0")
                    },
                           maximumValueLabel: {
                                Text("100")
                    })
                        .padding(.bottom, 3)
                    
                    Text("Area:")
                        .font(.title2)
                        .padding(.bottom, 3)
                    
                    Text("------ square units")
                }
                .padding(.horizontal)
                Spacer()
            }
        }
        .navigationTitle("Figures Helper")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
        ContentView()
    }
    }
}

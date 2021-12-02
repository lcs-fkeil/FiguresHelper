//
//  ParallelogramView.swift
//  FiguresHelper
//
//  Created by Franka Keil on 2021-12-01.
//

import SwiftUI

struct ParallelogramView: View {
    
    // MARK: Stored properties
    @State var height: Double = 10.0
    @State var sideB: Double = 15.0
    @State var sideC: Double = 12.0
    
    // MARK: Computed properties
    var perimeter: Double{
        return sideB + sideB + sideC + sideC
    }
    var area: Double {
        return sideB * height
    }
    
    var body: some View {
        VStack(alignment: .leading ,spacing: 20){
            
            Text("Height: ")
                .bold()
            
            Group{
                
                HStack{
                    Spacer()
                    Text("\(height)")
                        .font(.title2)
                        .bold()
                    Spacer()
                }
                
                Slider(value: $height,
                       in: 0.0...100.0,
                       step: 1.0,
                       label: {
                    Text("Height")
                },
                       minimumValueLabel: {
                    Text("0.0")
                },
                       maximumValueLabel: {
                    Text("100.0")
                })
            }
            
            Text("Side B:")
                .bold()
            
            Group{
                
                HStack{
                    Spacer()
                    Text("\(sideB)")
                        .font(.title2)
                        .bold()
                    Spacer()
                }
                
                Slider(value: $sideB,
                       in: 0.0...100.0,
                       step: 1.0,
                       label: {
                    Text("Side B")
                },
                       minimumValueLabel: {
                    Text("0.0")
                },
                       maximumValueLabel: {
                    Text("100.0")
                })
            }
            
            Text("Side C:")
                .bold()
            
            Group{
                
                HStack{
                    Spacer()
                    Text("\(sideC)")
                        .font(.title2)
                        .bold()
                    Spacer()
                }
                
                Slider(value: $sideC,
                       in: height...100.0,
                       step: 1.0,
                       label: {
                    Text("Side C")
                },
                       minimumValueLabel: {
                    Text("\(height)")
                },
                       maximumValueLabel: {
                    Text("100.0")
                })
            }
            
            Group{
                Text("Perimeter:")
                    .bold()
                
                Text("\(perimeter) units")
                    .font(.title2)
                
                Text("Area:")
                    .bold()
                
                Text("\(area) square units")
                    .font(.title2)
            }
            
            Spacer()
        }
        .padding()
        .navigationTitle("Parallelogram")
    }
    
}

struct ParallelogramView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ParallelogramView()
        }
    }
}

//
//  PyramidView.swift
//  FiguresHelper
//
//  Created by Jacobo de Juan Millon on 2021-12-01.
//

import SwiftUI

struct PyramidView: View {
    @State var side: Double = 10.0
    @State var height: Double = 10.0
    var slantHeight: Double {
        return sqrt(side * side / 4 + height * height)
    }
    var surfaceArea: Double {
        return side * side + 2 * side * slantHeight
    }
    var volume: Double {
        return side * side * height / 3
    }
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text("Side length:")
                    .bold()
                HStack {
                    Spacer()
                    Text("\(side)")
                    Spacer()
                }
                Slider(value: $side,
                       in: 0.0...100.0,
                       step: 1.0,
                       label: {
                    Text("Side")
                },
                       minimumValueLabel: {
                    Text("0.0")
                },
                       maximumValueLabel: {
                    Text("100.0")
                })
                Text("Height:")
                    .bold()
                HStack {
                    Spacer()
                    Text("\(height)")
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
                
                Group {
                    Text("Slant height:")
                        .bold()
                    
                    Text("\(slantHeight) units")
                        .font(.title2)
                    
                    Text("Surface Area:")
                        .bold()
                    
                    Text("\(surfaceArea) square units")
                        .font(.title2)
                    
                    Text("Volume:")
                        .bold()
                    
                    Text("\(volume) cubic units")
                        .font(.title2)
                }
            }
        }
        .padding()
        .navigationTitle("Square pyramid")
    }
}

struct PyramidView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            PyramidView()
        }
    }
}

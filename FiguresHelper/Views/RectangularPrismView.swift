//
//  RectangularPrismView.swift
//  FiguresHelper
//
//  Created by Jacobo de Juan Millon on 2021-12-01.
//

import SwiftUI

struct RectangularPrismView: View {
    @State var length: Double = 10.0
    @State var width: Double = 10.0
    @State var height: Double = 10.0
    var surfaceArea: Double {
        return 2 * (length * width + width * height + height * length)
    }
    var volume: Double {
        return length * width * height
    }
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Group {
                    
                    Text("Length:")
                        .bold()
                    HStack {
                        Spacer()
                        Text("\(length)")
                        Spacer()
                    }
                    Slider(value: $length,
                           in: 0.0...100.0,
                           step: 1.0,
                           label: {
                        Text("Length")
                    },
                           minimumValueLabel: {
                        Text("0.0")
                    },
                           maximumValueLabel: {
                        Text("100.0")
                    })
                    
                }
                
                Group {
                    
                    Text("Width:")
                        .bold()
                    HStack {
                        Spacer()
                        Text("\(width)")
                        Spacer()
                    }
                    Slider(value: $width,
                           in: 0.0...100.0,
                           step: 1.0,
                           label: {
                        Text("width")
                    },
                           minimumValueLabel: {
                        Text("0.0")
                    },
                           maximumValueLabel: {
                        Text("100.0")
                    })
                    
                }
                
                Group {
                    
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
                    
                }
                
                Group {
                    
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
        .navigationTitle("Rectangular Prism")
    }
}

struct RectangularPrismView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            RectangularPrismView()
        }
    }
}

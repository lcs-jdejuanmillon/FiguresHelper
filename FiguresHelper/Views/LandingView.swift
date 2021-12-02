//
//  LandingView.swift
//  FiguresHelper
//
//  Created by Jacobo de Juan Millon on 2021-12-01.
//

import SwiftUI

struct LandingView: View {
    var body: some View {
        
        List {
            Section(header: Text("2-Dimensional Shapes")) {
                NavigationLink(destination: CircleView(),
                               label: { Text("Circle")
                })
            }
            
            Section(header: Text("3-Dimensional Objects")) {
                NavigationLink(destination: PyramidView())
                { Text("Square pyramid")
                }
            }
            
        }
        .navigationTitle("Figures Helper")
    }
}

struct LandingView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            LandingView()
        }
    }
}

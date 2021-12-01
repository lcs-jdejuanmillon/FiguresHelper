//
//  ContentView.swift
//  FiguresHelper
//
//  Created by Jacobo de Juan Millon on 2021-12-01.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text("Radius")
                HStack {
                    Spacer()
                    Text("25.0")
                    Spacer()
                }
                Slider(value: .constant(25.0),
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
                Text("Area:")
                Text("100 square units")
            }
            .padding(.horizontal)
        }
        .navigationTitle("Circle")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView()
        }
    }
}

//
//  ContentView.swift
//  Tip Calculator
//
//  Created by Karan Mehta on 11/14/20.
//

import SwiftUI

struct ContentView: View {
    @State var total = " 20 "
    @State var tipPercent: Double = 15.0
    
    var body: some View {
        VStack {
            Text("Tip calculator")
                .bold()
                .font(.title)
            
            HStack {
                Text("$")
                TextField("Total", text: $total)
                    .border(Color.black, width:0.25)
                
            }
            .padding()
            
            HStack {
                Slider(value: $tipPercent, in: 1...30, step: 1.0)
                Text("% \(Int(tipPercent))")
            }
            .padding()
            
            if let totalNum = Double(total) {
                Text("Total Tip: $ \(totalNum * tipPercent / 100, specifier: "%0.2f" )")
            }
            else {
                Text("Look at your bill, and type in a number")
            }
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

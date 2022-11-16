//
//  ContentView.swift
//  Calculator
//
//  Created by Vyacheslav Vert on 11/11/22.
//

import SwiftUI




struct ContentView: View {
    
    @State var firstNumber: String = ""
    @State var secondNumber: String = ""
    @State var result: Int = 0
    
    
    var body: some View {
        VStack {
            TextField("First number", text: $firstNumber)
                .padding()
                .keyboardType(.numberPad)
            
            TextField("Second number", text: $secondNumber)
                .padding()
                .keyboardType(.numberPad)
            
            
            Text("Result: \(result)")
            
            HStack {
                Button("minus") {
                    result = (Int(firstNumber) ?? 0) - (Int(secondNumber) ?? 0)
                }
                .padding()
                Button("multiply") {
                    result = (Int(firstNumber) ?? 0) * (Int(secondNumber) ?? 0)
                }
                .padding()
                Button("divide") {
                    result = (Int(firstNumber) ?? 0) / (Int(secondNumber) ?? 0)
                }
                .padding()
                
                Button(action: {
                    result = (Int(firstNumber) ?? 0) + (Int(secondNumber) ?? 0)
                }) {
                    Image(systemName: "sum")
                        .renderingMode(.original)
                }.padding()
                
                
                Button(action: {
                    firstNumber = ""
                    secondNumber = ""
                    result = 0
                    
                }) {
                    Image(systemName: "clear")
                        .renderingMode(.original)
                }.padding()
            }
            
        }
    }
}







struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

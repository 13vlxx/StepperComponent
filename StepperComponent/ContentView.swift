//
//  ContentView.swift
//  StepperComponent
//
//  Created by Alex on 18/07/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var value: Double = 0
    @State private var value2: Double = 0
    @State private var value3: Double = 0
    @State private var value4: Double = 0
    @State private var value5: Double = 0
    var body: some View {
        Form {
            // Step normal
            Section {
                VStack {
                    Text("Stepper Simple")
                    Stepper("Quantité : \(Int(value))", value: $value)
                }
            }
            
            // Step avec plage
            Section {
                VStack {
                    Text("Stepper avec plage de 0 à 100")
                    Stepper("Quantité : \(Int(value2))", value: $value2, in: 0...100)
                }
            }
            
            // Step avec pas de 10
            Section {
                VStack {
                    Text("Stepper avec plage de 0 à 100")
                    Stepper("Quantité : \(Int(value3))", value: $value3, in: 0...100, step: 10)
                }
            }
            
            // Step avec option increment/décrément
            Section {
                VStack {
                    Text("Stepper avec plage de 0 à 100")
                    Stepper("Quantité : \(Int(value4))") {
                        self.value4 += 1
                    } onDecrement: {
                        self.value4 -= 1
                    }

                }
            }
            
            // Step avec label
            Section {
                VStack {
                    Text("Stepper avec label")
                    Stepper {
                        self.value5 += 1
                    } onDecrement: {
                        self.value5 -= 1
                    } label: {
                        HStack {
                            Image(systemName: "pencil.circle.fill").font(.largeTitle)
                            Text("Quantité : \(Int(value5))")
                        }
                    }

                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

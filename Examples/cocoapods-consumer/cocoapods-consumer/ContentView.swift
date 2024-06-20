//
//  ContentView.swift
//  cocoapods-consumer
//
//  Created by ProDoctor on 19/06/24.
//

import SwiftUI
import spm_study

struct ContentView: View {
    private let sum = Calculate.sum(1, 2)
    
    var body: some View {
        VStack {
            Text("The sum of 1 and 2 is \(sum)")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

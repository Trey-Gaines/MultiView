//
//  ContentView.swift
//  MultiView
//
//  Created by Trey Gaines on 8/15/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    @State var streamName = ""
    @State var currentViews = 0
    var body: some View {
        VStack {
            HStack(spacing: 50) {
                Model3D(named: "Scene", bundle: realityKitContentBundle)
                    .padding(.bottom, 50)
                
                Model3D(named: "Scene", bundle: realityKitContentBundle)
                    .padding(.bottom, 50)
            }
            VStack {
                Text("Add a Stream")
                    .font(.extraLargeTitle)
                    .fontWeight(.semibold)
                TextField("Input link or user", text: $streamName)
                    .frame(width: 300, height: 50)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .multilineTextAlignment(.center)
            }
        }
        .padding()
    }
}

enum TabChoices {
      //Tabview
}



#Preview(windowStyle: .automatic) {
    ContentView()
}

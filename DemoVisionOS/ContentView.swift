//
//  ContentView.swift
//  DemoVisionOS
//
//  Created by Shakhnoza Mirabzalova on 2/25/25.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {

    @State private var isGlassBackgroundShown: Bool = true
    
    var body: some View {
        VStack {
//            Model3D(named: "Scene", bundle: realityKitContentBundle)
            Image(systemName: "globe")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.teal)
                .frame(width: 100, height: 100)
                .padding(.bottom, 50)
                
            Text("Hello, world!")
            
            Toggle("Glass background", isOn: $isGlassBackgroundShown)

//            ToggleImmersiveSpaceButton()
        }
        .padding()
        .frame(width: 700)
        .glassBackgroundEffect(displayMode: .never)
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
        .environment(AppModel())
}

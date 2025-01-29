//
//  ContentView.swift
//  visionProMusicApp
//
//  Created by Shakhnoza Mirabzalova on 1/28/25.
//

import SwiftUI
import RealityKit
import RealityKitContent


struct SideMenuItem: Identifiable, Hashable {
    var id = UUID()
    var name: String
    var icon: String
}

let sideMenuItems: [SideMenuItem] = [
    SideMenuItem(name: "Recently Added", icon: "clock"),
    SideMenuItem(name: "Artists", icon: "music.mic"),
    SideMenuItem(name: "Albums", icon: "square.stack"),
    SideMenuItem(name: "Songs", icon: "music.note"),
    SideMenuItem(name: "Made For You", icon: "person.crop.square"),
]

struct ContentView: View {

    var body: some View {
        NavigationSplitView {
            SideBarView()
        } detail : {
          // Album View
            
        }
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
        .environment(AppModel())
}

struct SideBarView: View {
    var body: some View {
        List(sideMenuItems) { item in
            NavigationLink(value: item) {
                Label(item.name, systemImage: item.icon)
                    .foregroundStyle(.primary)
            }.navigationDestination(for: SideMenuItem.self) { item in
                
            }
        }
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                VStack (alignment: .leading) {
                    Text("Library")
                        .font(.largeTitle)
                    Text("All Music")
                        .foregroundStyle(.tertiary)
                }
            }
            ToolbarItem {
                Button(action: {}, label: {
                    Image(systemName: "ellipsis")
                })
            }
        }
    }
}

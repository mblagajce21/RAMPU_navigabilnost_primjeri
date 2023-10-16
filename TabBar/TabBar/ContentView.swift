//
//  ContentView.swift
//  TabBar
//
//  Created by Mirza on 16.10.2023..
//

import SwiftUI

struct Home: View {
    var body: some View {
        VStack {
            Image(systemName: "house")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Home")
                .font(.title)
        }
        .padding()
    }
}

struct Profile: View {
    var body: some View {
        VStack {
            Image(systemName: "person.crop.circle")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Profile")
                .font(.title)
        }
        .padding()
    }
}



struct Settings: View {
    var body: some View {
        VStack {
            Image(systemName: "gearshape")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Settings")
                .font(.title)
        }
        .padding()
    }
}

struct ContentView: View {
    var body: some View {
 
        TabView {
            Home()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
                .badge(4)
            Profile()
                .tabItem {
                    Label("Profile", systemImage: "person.crop.circle")
                }
            Settings()
                .tabItem {
                    Label("Settings", systemImage: "gearshape")
                }
                .badge("!")
            Settings()
                .tabItem {
                    Label("Settings", systemImage: "gearshape")
                }
            Settings()
                .tabItem {
                    Label("Settings", systemImage: "gearshape")
                }
            Settings()
                .tabItem {
                    Label("Settings", systemImage: "gearshape")
                }
            Settings()
                .tabItem {
                    Label("Settings", systemImage: "gearshape")
                }
            Settings()
                .tabItem {
                    Label("Settings", systemImage: "gearshape")
                }
        }
        
 
    }
}

#Preview {
    ContentView()
}


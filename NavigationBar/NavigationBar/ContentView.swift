//
//  ContentView.swift
//  NavigationBar
//
//  Created by Mirza on 15.10.2023..
//

import SwiftUI

struct Profile: View {
    var body: some View {
        NavigationStack {
            Text("My Profile")
                .navigationTitle("My Profile")
                .toolbar {
                    ToolbarItemGroup(placement: .primaryAction) {
                        NavigationLink(destination: Search(), label:{Label("Profile", systemImage: "magnifyingglass")})
                    }
                    ToolbarItemGroup(placement: .secondaryAction) {
                        Button("Settings") {
                            print("Settings tapped")
                        }

                        Button("Log Out") {
                            print("Log Out tapped")
                        }
                    }
                }
            }
    }
}
struct Search: View {
    var body: some View {
        NavigationStack {
            Text("Search")
                .navigationTitle("Search")
                .toolbar {
                    ToolbarItemGroup(placement: .primaryAction) {
                        NavigationLink(destination: Profile(), label:{Label("Profile", systemImage: "person.crop.circle")})
                    }
                    ToolbarItemGroup(placement: .secondaryAction) {
                        Button("Settings") {
                            print("Settings tapped")
                        }

                        Button("Log Out") {
                            print("Log Out tapped")
                        }
                    }
                }
            }
    }
}

struct ContentView: View {
    var body: some View {
        NavigationStack {
            Text("RAMPU")
                .navigationTitle("Navigation Bar")
                .toolbar {
                    ToolbarItemGroup(placement: .primaryAction) {
                        NavigationLink(destination: Profile(), label:{Label("Profile", systemImage: "person.crop.circle")})
                        NavigationLink(destination: Search(), label:{Label("Profile", systemImage: "magnifyingglass")})
                    }
                    
                    ToolbarItemGroup(placement: .secondaryAction) {
                        Button("Settings") {
                            print("Settings tapped")
                        }

                        Button("Log Out") {
                            print("Log Out tapped")
                        }
                    }
                }
            }
    }
}

#Preview {
    ContentView()
}

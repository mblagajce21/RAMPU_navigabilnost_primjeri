//
//  ContentView.swift
//  navigationstack
//
//  Created by Mirza on 15.10.2023..
//

import SwiftUI

struct WiFi: View {
    var body: some View {
        Text("Wi-Fi")
            .font(.title)
    }
}
struct Bluetooth: View {
    var body: some View {
        Text("Bluetooth")
            .font(.title)
    }
}
struct MobileService: View {
    var body: some View {
        Text("Mobile Service")
            .font(.title)
    }
}
struct HotSpot: View {
    var body: some View {
        Text("Personal Hotspot")
            .font(.title)
    }
}
struct Notifications: View {
    var body: some View {
        Text("Notifications")
            .font(.title)
      //      .navigationBarBackButtonHidden(true)
    }
}

struct ContentView: View {
    @State private var bool = false
    var body: some View {
        NavigationView{
          List {
          Section(header: Text("General")) {
          Toggle(isOn: $bool) {
              Label("Airplane Mode", systemImage: "airplane")
            }
            NavigationLink(destination: WiFi(), label:{Label("Wi-Fi", systemImage: "wifi")})
            NavigationLink(destination: Bluetooth(), label:{Label("Bluetooth", systemImage: "network")})
            NavigationLink(destination: MobileService(), label:{Label("Mobile Service", systemImage: "antenna.radiowaves.left.and.right")})
            NavigationLink(destination: HotSpot(), label:{Label("Personal Hotspot", systemImage: "personalhotspot")})

          }
          Section(header: Text("Other")) {
            NavigationLink(destination: Notifications(), label:{Label("Notifications", systemImage: "bell.badge.fill")})
          }
          }
          .navigationTitle("Settings - RAMPU")
        .listStyle(SidebarListStyle())
         }
    }
}

#Preview {
    ContentView()
}

//
//  Navigation.swift
//  Sleep++
//
//  Created by Marco Giocondo Mignone on 13/12/21.
//

import SwiftUI

struct Navigation: View {
    
    @SceneStorage("activeTab") private var activeTab = Tab.history
    
    enum Tab: Int {
        case record, history, trend
    }
    
    var body: some View {
        TabView(selection: $activeTab) {
            Record()
                .tabItem {
                    Label("Record", systemImage: "record.circle")
                }
            
            History()
                .tabItem {
                    Label("History", systemImage: "moon.zzz.fill")
                }.environmentObject(Stored())
            ContentView()
                .tabItem {
                    Label("Trend", systemImage: "chart.bar.fill")
                }
        }
    }
}

struct Navigation_Previews: PreviewProvider {
    static var previews: some View {
        Navigation()
    }
}

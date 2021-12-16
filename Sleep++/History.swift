//
//  History.swift
//  Sleep++
//
//  Created by Marco Giocondo Mignone on 13/12/21.
//

import SwiftUI

struct History: View {
    
    @EnvironmentObject private var stored: Stored
    @State private var showModal = false
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack (spacing: 23){
                    ForEach(stored.nights) { night in
                        CardView(night: night)
                    }
                }
                .padding()
                .frame(width: UIScreen.main.bounds.width)
                .background(Color("Background"))
            }.navigationTitle("History")
        }
        .tabItem { Label("History", systemImage: "moon.zzz.fill") }
        .tag(Navigation.Tab.history)
    }
}


struct History_Previews: PreviewProvider {
    static var previews: some View {
        History().environmentObject(Stored())
    }
}


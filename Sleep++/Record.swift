//
//  Record.swift
//  Sleep++
//
//  Created by Marco Giocondo Mignone on 13/12/21.
//

import SwiftUI

struct Record: View {
    
    @State private var recording = false
    
    
    
    var body: some View {
        NavigationView {
            VStack{
                Text("Sleep \n time").font(.system(size: 54, weight: .bold, design: .serif))
                    .foregroundColor(.white).multilineTextAlignment(.center)
                ZStack{
                    Circle()
                        .fill(Color.white)
                        .frame(width: 230, height: 230)
                        .shadow(color:
                                        .black, radius: 5, x: 1, y: 3)
                    Circle()
                        .fill(Color.indigo)
                        .frame(width: 170, height: 170)
                }
                //                .onTapGesture {
                //                    recording.toggle()
                //                    if recording == true {
                //
                //                    }
                //                }
            }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height).background(Color("Background"))
        }.tabItem { Label("Record", systemImage: "record.circle") }
        .tag(Navigation.Tab.record)
    }
}

struct Record_Previews: PreviewProvider {
    static var previews: some View {
        Record()
    }
}

//
//  Modal.swift
//  Sleep++
//
//  Created by Marco Giocondo Mignone on 14/12/21.
//

import SwiftUI

struct Modal: View {
    @EnvironmentObject private var stored: Stored
    @Binding var isPresented: Bool
    
    let night: Night
    
    var body: some View {
        NavigationView{
            VStack (alignment: .leading){
                VStack {
                    Image(systemName: "clock.circle").font(.system(size: 80))
                    
                    Text(night.lenght).font(.system(size: 50, weight: .bold, design: .serif))
                }.padding(.bottom, 20)
                
                VStack(alignment: .leading){
                    Image(systemName: "powersleep").font(.system(size: 80))
                    
                    Text(night.quality).font(.system(size: 50, weight: .bold, design: .serif))
                }
                


                
//                if night.quality >= "85%" {
//                    Image("memoji1")
//                        .resizable()
//                        .scaledToFit()
//                        .frame(width: 200, height: 200)
//                        .padding(.leading, 90)
//                }else{
//                    Image("memoji2")
//                        .resizable()
//                        .scaledToFit()
//                        .frame(width: 200, height: 200)
//                        .padding(.leading, 90)
//                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: { isPresented.toggle() }) {
                        Text("Done")
                    }
                }
//                ToolbarItem(placement: .principal) {
//                    VStack {
//                        Text("Sleep info for the night")
//                            .font(.caption2).foregroundColor(.gray)
//                        Text(night.date).font(.title3)
//                    }
//                }
            }
        }
    }
}

struct Modal_Previews: PreviewProvider {
    static var previews: some View {
        Modal(isPresented: .constant(true), night: Stored().nights[0]).environmentObject(Stored())
    }
}

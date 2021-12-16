//
//  CardView.swift
//  Sleep++
//
//  Created by Marco Giocondo Mignone on 10/12/21.
//

import SwiftUI

struct CardView: View {
    
    @State private var showModal = false
    let night: Night

    
    internal init(night: Night) {
        self.night = night
    }
//
//    internal init(imageName: String, date: String, quality: String, lenght: String, isFullWidth: Bool = false) {
//        self.image = Image(imageName)
//        self.date = date
//        self.quality = quality
//        self.lenght = lenght
//        self.isFullWidth = isFullWidth
//    }
//
//    internal init(uiImage: UIImage, date: String, quality: String, lenght: String, isFullWidth: Bool = false) {
//        self.image = Image(uiImage: uiImage)
//        self.date = date
//        self.quality = quality
//        self.lenght = lenght
//        self.isFullWidth = isFullWidth
//    }
//
//    let image: Image
//    let date: String
//    let quality: String
//    let lenght: String
//    let isFullWidth: Bool
    
    var body: some View {
        Image(night.imageName)
                .resizable()
                .scaledToFill()

                .frame(width: 370, height: 190)
                .overlay(LinearGradient(gradient: Gradient(colors: [.white.opacity(0),.gray.opacity(0.1), .black.opacity(0), .black.opacity(0), .black.opacity(0.2), .black.opacity(0.55)]), startPoint: .top, endPoint: .bottom))
        .onTapGesture {
                showModal.toggle()
        }
        .sheet(isPresented: $showModal) {
                Modal(isPresented: $showModal, night: night)
        }

                .cornerRadius(30)
                .shadow(color: .black, radius: 10, x: 3, y: 6)

                .overlay(alignment: .topLeading) {
                    Text(night.date)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(.white)
//                        .font(.system(size: 30, weight: .regular, design: .default))
                        .font(.system(size: 30, weight: .medium, design: .serif))
                        .padding([.leading, .top], 28)
                        .padding(.leading, 0)

                }
                .overlay(alignment: .topTrailing) {
                    Text(night.lenght)     .multilineTextAlignment(.trailing)
                        .foregroundColor(.white)
                        .font(.system(size: 30, weight: .medium, design: .serif))
                        .padding([.trailing, .top], 28)
                        .padding(.trailing, 26.7)
                }
        
                .overlay(alignment: .bottomTrailing){
                    Text(night.quality)   .multilineTextAlignment(.trailing)
                        .foregroundColor(.white)
                        .font(.system(size: 50, weight: .bold, design: .serif))
                        .padding([.trailing, .bottom], 22)
                        .padding(.trailing, 27.6)
                }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(night: Stored().nights[0])
    }
}

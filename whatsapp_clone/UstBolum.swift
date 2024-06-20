//
//  UstBolum.swift
//  whatsapp_clone
//
//  Created by zehra özer on 20.06.2024.
//

import SwiftUI

struct UstBolum: View {
    var body: some View {
       
            VStack(alignment: .leading) {
                HStack {
                    Text("WhatsApp")
                        .font(.system(size: 30))
                        .bold()
                    
                    Spacer()
                    Group {
                        Image(systemName: "camera")
                        Image(systemName: "magnifyingglass")
                        Image(systemName: "ellipsis")
                            .rotationEffect(.degrees(90))
                    }
                    .padding(5)
                    .bold()
                    .font(.title2)
                }
                .foregroundColor(.white)
                
                HStack {
                    yazi(yazi: "Tümü", renk: .green)
                    yazi(yazi: "Okunmamış", renk: .black.opacity(0.4))
                    yazi(yazi: "Gruplar", renk: .black.opacity(0.4))
                }.font(.title2)
                
                HStack {
                    Image(systemName: "tray.and.arrow.down")
                    Text("Arşivlenmiş")
                        .bold()
                        .font(.title2)
                    Spacer()
                    Text("3")
                        .foregroundColor(.green)
                    
                }.foregroundColor(.white)
            }
            .padding()
    }
}

struct yazi: View {
    var yazi: String
    var renk: Color
    var body: some View {
        Text(yazi)
            .padding(.horizontal, 10)
            .padding(.vertical, 4)
            .background(Color.gray)
            .foregroundColor(renk)
            .cornerRadius(20)
            .padding(.horizontal, 2)
            .padding(.vertical , 10)
    }
}

#Preview {
    UstBolum()
}


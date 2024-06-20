//
//  sohbetView.swift
//  whatsapp_clone
//
//  Created by zehra özer on 20.06.2024.
//

import SwiftUI

struct sohbetView: View {
    
    var body: some View {
        ScrollView {
            ZStack {
                Color.arkaplan.edgesIgnoringSafeArea(.all)
                VStack {
                    sohbet(profil: "person.fill", kisiAdi: "Deneme 1", mesaj: "Merhaba, nasılsın?", tarih: "17.55")
                    sohbet(profil: "person.fill", kisiAdi: "Deneme 2", mesaj: "Selam!", tarih: "18.10")
                    sohbet(profil: "person.fill", kisiAdi: "Deneme 3", mesaj: "Neler yapıyorsun?", tarih: "19.20")
                    sohbet(profil: "person.fill", kisiAdi: "Deneme 4", mesaj: "Görüşmek üzere.", tarih: "20.30")
                    sohbet(profil: "person.fill", kisiAdi: "Deneme 5", mesaj: "Teşekkürler.", tarih: "21.45")
                    sohbet(profil: "person.fill", kisiAdi: "Deneme 6", mesaj: "İyi geceler.", tarih: "22.00")
                    sohbet(profil: "person.fill", kisiAdi: "Deneme 7", mesaj: "Yarın görüşelim.", tarih: "09.15")
                    sohbet(profil: "person.fill", kisiAdi: "Deneme 8", mesaj: "Toplantı saat kaçta?", tarih: "10.30")
                    sohbet(profil: "person.fill", kisiAdi: "Deneme 9", mesaj: "Ödevi bitirdin mi?", tarih: "11.45")
                    sohbet(profil: "person.fill", kisiAdi: "Deneme 10", mesaj: "Nerdesin?", tarih: "12.50")
                    sohbet(profil: "person.fill", kisiAdi: "Deneme 11", mesaj: "Hadi dışarı çıkalım.", tarih: "14.05")
                    sohbet(profil: "person.fill", kisiAdi: "Deneme 12", mesaj: "Film izleyelim mi?", tarih: "15.20")
                    sohbet(profil: "person.fill", kisiAdi: "Deneme 13", mesaj: "Yeni proje hakkında ne düşünüyorsun?", tarih: "16.30")
                }
                .padding()
            }
        }
    }
}

struct sohbet: View {
    var profil: String
    var kisiAdi: String
    var mesaj: String
    var tarih: String
    
    var body: some View {
        HStack {
            Image(systemName: profil)
                .resizable()
                .foregroundColor(.white.opacity(0.8))
                .frame(width: 50, height: 50)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 1))
                .padding(.trailing, 8)
            
            VStack(alignment: .leading) {
                Text(kisiAdi)
                    .font(.headline)
                    .foregroundColor(.white)
                Text(mesaj)
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            Spacer()
            Text(tarih)
                .font(.footnote)
                .foregroundColor(.gray)
        }
        .padding(.vertical, 8)
    }
}

#Preview {
    sohbetView()
}


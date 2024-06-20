//
//  ContentView.swift
//  whatsapp_clone
//
//  Created by zehra özer on 20.06.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.arkaplan.edgesIgnoringSafeArea(.all)
            VStack {
                UstBolum()
                sohbetView()
                tabbar_view()
            }
        }
    }
}




#Preview {
    ContentView()
}

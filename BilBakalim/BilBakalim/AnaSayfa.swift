//
//  SonucEkrani.swift
//  BilBakalim
//
//  Created by Yavuz Kaan Akyüz on 1.02.2024.
//

import SwiftUI

struct AnaSayfa: View {
    @State private var tahminEkraninaGecis = false
    var body: some View {
        NavigationStack {
            VStack(spacing: 100) {
                Text("Tahmin Oyunu")
                    .padding()
                    .font(.system(size: 50))
                    .offset(x: 0, y: -90)
                Image("zar").resizable().frame(width: 90, height: 90)
                    .padding()
                Button("Oyuna Başla") {
                    tahminEkraninaGecis = true
                }
                    .foregroundColor(.white)
                    .frame(width: 180, height: 50)
                    .background(.blue)
                    .cornerRadius(10)
            }
            .navigationDestination(isPresented: $tahminEkraninaGecis) {
                TahminEkrani()
            }
            
        }
    }
}

#Preview {
    AnaSayfa()
    
}

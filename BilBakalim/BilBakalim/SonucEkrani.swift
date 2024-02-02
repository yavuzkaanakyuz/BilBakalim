//
//  ContentView.swift
//  BilBakalim
//
//  Created by Yavuz Kaan Akyüz on 1.02.2024.
//

import SwiftUI

struct SonucEkrani: View {
    var sonuc = false
    var body: some View {
        VStack(spacing: 100) {
            if sonuc {
                Text("Kazandınız")
                    .font(.system(size: 36))
                Image("mutlu")
                    .resizable()
                    .frame(width: 128, height: 128)
            } else {
                Text("Kaybettiniz")
                    .font(.system(size: 36))
                Image("uzgun")
                    .resizable()
                    .frame(width: 128, height: 128)
            }
            
    }
  }
}

#Preview {
    SonucEkrani()
}

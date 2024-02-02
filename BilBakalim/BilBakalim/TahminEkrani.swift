//
//  TahminEkrani.swift
//  BilBakalim
//
//  Created by Yavuz Kaan Akyüz on 1.02.2024.
//

import SwiftUI

struct TahminEkrani: View {
    @State private var sonucEkraninaGecis = false
    @State private var kalanHak = 5
    @State private var yonlendirme = ""
    @State private var tfTahmin = ""
    @State private var rastgeleSayi = 0
    @State private var sonuc = false
    
    
    var body: some View {
        
            VStack(spacing: 100) {
                Text("Kalan Hak: \(kalanHak)") 
                    .font(.system(size: 36))
                    .foregroundColor(.red)
                
                Text("Yardım: \(yonlendirme)")
                    .font(.system(size: 24))
                
                TextField("Tahmin", text: $tfTahmin)
                    .textFieldStyle(.roundedBorder)
                    .padding()
                
                    /*
                     Bu kodda if let ifadesi, tfTahmin adlı metin alanından girilen değeri tahmin adında bir Int değişkenine dönüştürmek için kullanılır. tfTahmin metin alanından girilen değer Int'e dönüştürülemezse, if let bloğu çalıştırılmaz ve kod bir sonraki adıma geçer.
                     */
                
                Button("Tahmin Et") {
                    kalanHak -= 1
                    if let tahmin = Int(tfTahmin) {
                        if tahmin == rastgeleSayi {
                            sonucEkraninaGecis = true
                            sonuc = true
                            return
                        }
                        if tahmin > rastgeleSayi {
                            yonlendirme = "Azalt"
                        }
                        if tahmin < rastgeleSayi {
                            yonlendirme = "Artır"
                        }
                        if kalanHak == 0 {
                            sonucEkraninaGecis = true
                            sonuc = false
                            
                        }
                    }
                    tfTahmin = ""
                }
                .foregroundColor(.white)
                .frame(width: 180, height: 50)
                .background(.blue)
                .cornerRadius(10)
            }
            .navigationDestination(isPresented: $sonucEkraninaGecis) {
                SonucEkrani(sonuc: sonuc)
            }
            .onAppear {
                rastgeleSayi = Int.random(in: 1...100)
                print("Generated number: \(rastgeleSayi)")
                
                //Arayüz sıfırlama
                kalanHak = 5
                yonlendirme = ""
                tfTahmin = ""
            }
            
        
        }
    }


#Preview {
    TahminEkrani()
}

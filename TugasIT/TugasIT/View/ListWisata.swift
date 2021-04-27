//
//  ListWisata.swift
//  TugasIT
//
//  Created by ADMIN on 14/04/21.
//

import SwiftUI

struct ListWisata: View {
    var body: some View {
        NavigationView{
        
        List(WisataData){ data in
            
            NavigationLink(destination: DetailWisata(detail: data)){
        
            VStack(alignment: .leading){
                HStack{
                    Image(data.gambar)
                        .resizable()
                        .frame(width: 110, height: 80)
                        .cornerRadius(10)
                    VStack(alignment: .leading){
                        Text(data.namaWisata)
                            .font(.system(size: 23))
                            .bold()
                        Text(data.lokasi)
                            .foregroundColor(.gray)
                            .font(.system(size: 18))
                        HStack(spacing: 10){
                            //Menghitung Bintang
                            ForEach(0..<data.rating){
                                items in
                                Image(systemName: "star.fill")
                                    .foregroundColor(.orange)
                                    .font(.system(size: 15))
                                    .padding(-5)
                            }
                        }
                    }
                }
            
            }

        }
        
            
        }
        .navigationBarTitle("Wisata")
        }
    }
}

struct ListWisata_Previews: PreviewProvider {
    static var previews: some View {
        ListWisata()
    }
}

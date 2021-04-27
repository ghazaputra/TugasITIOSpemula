//
//  DetailWisata.swift
//  TugasIT
//
//  Created by ADMIN on 15/04/21.
//

import SwiftUI

struct DetailWisata: View {
    
    let detail: wisata
    
    var body: some View {
        ScrollView{
            VStack (alignment: .leading){
                Image(detail.gambar)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                VStack(alignment: .leading){
                    Text(detail.namaWisata)
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                    Text(detail.lokasi)
                        .foregroundColor(.gray)
                        .font(.system(size: 18))
                    HStack(spacing: 10){
                        //Menghitung Bintang
                        ForEach(0..<detail.rating){
                            items in
                            Image(systemName: "star.fill")
                                .foregroundColor(.orange)
                                .font(.system(size: 15))
                                .padding(-5)
                        }
                    }
                    Text(detail.detailWisata)
                        .fontWeight(.regular)
                        .foregroundColor(.black)
                }.padding()
            }
        }
        
        .navigationBarTitleDisplayMode(.inline)
        
    }
}

struct DetailWisata_Previews: PreviewProvider {
    static var previews: some View {
        DetailWisata(detail: wisata(id: 0, gambar: "", namaWisata: "", lokasi: "", rating: 5, detailWisata: ""))
    }
}

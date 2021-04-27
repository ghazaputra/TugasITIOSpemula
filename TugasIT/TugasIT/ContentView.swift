//
//  ContentView.swift
//  TugasIT
//
//  Created by ADMIN on 13/04/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            ListWisata()
                .tabItem{
                    Image(systemName: "house.fill")
                    Text("Beranda")

                }
            SettingView()
                .tabItem{
                    Image(systemName: "person.fill")
                    Text("Profile")

                }
            
            ViewSetting()
                .tabItem{
                    Image(systemName: "gear")
                    Text("Setting")
                }

        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

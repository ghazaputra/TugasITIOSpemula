//
//  HalamanProfile.swift
//  TugasIT
//
//  Created by ADMIN on 14/04/21.
//

import SwiftUI


struct SettingView: View {
    var body: some View{
        NavigationView{
         
               //setting photo profile
                    VStack(alignment: .center){
                        Image("profil")
                            .resizable()
                            .frame(width: 150, height: 150)
                            .clipShape(Circle())
                        //nama dan status
                    
                            Text("Muhammad Ghaza")
                                .font(.headline)
                                
                            Text("IOS Developer")
                                .font(.caption)
                                
                        
                    }
            
                    .navigationBarTitle("Profile")
        }
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View{
        SettingView()
            
    }
}

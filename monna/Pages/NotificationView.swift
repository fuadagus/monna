//
//  NotificationView.swift
//  monna
//
//  Created by Fuad Agus Salim on 20/04/26.
//

import SwiftUI

struct NotificationView: View {
    var body: some View {
        VStack{
            VStack{
                Text("Today").frame(width: .infinity).multilineTextAlignment(.leading)
                    .frame(width: .infinity, alignment: .leading)
//                    .background(Color.black)
                    .foregroundColor(Color.black)
                    .bold()
                    .font(.headline)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                HStack{
                    Image(systemName: "person.fill").frame(width: 80, height: 80).foregroundColor(Color.black).background(Color.black).clipShape(.circle)
                    
                    VStack{
                        
                    Text("ini adalah sebuah notifikasi dari blablabaksdnfksdf")
                            .frame(maxWidth: .infinity, alignment: .leading)
                    TimeUIView().frame(maxWidth: .infinity, alignment: .leading)
                        Rectangle().frame(height: 1).padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 40))
                        
                        
                        
                    
                    }
                    
                }
                
            }.frame(maxWidth: .infinity , alignment: .leading)
        }.frame(width: .infinity, alignment: .leading)
    }
}

#Preview {
    NotificationView()
}

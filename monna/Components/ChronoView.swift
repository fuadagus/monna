//
//  ChronoView.swift
//  monna
//
//  Created by Fuad Agus Salim on 23/04/26.
//

import SwiftUI

struct ChronoView: View {
    var time:Int = 1
    
    
    var body: some View {
        
      
       
        
        VStack{
            if (time <= 24*60) {
                Text("Today").frame(width: .infinity).multilineTextAlignment(.leading)
                    .frame(width: .infinity, alignment: .leading)
    //                    .background(Color.black)
                    .foregroundColor(Color.black)
                    .bold()
                    .font(.headline)
                    .frame(maxWidth: .infinity, alignment: .leading)
            } else if (time <= 7*24*60) {
                Text("Last week").frame(width: .infinity).multilineTextAlignment(.leading)
                    .frame(width: .infinity, alignment: .leading)
    //                    .background(Color.black)
                    .foregroundColor(Color.black)
                    .bold()
                    .font(.headline)
                    .frame(maxWidth: .infinity, alignment: .leading)
            } else if  (time <= 4*7*24*60) {
                Text("This month").frame(width: .infinity).multilineTextAlignment(.leading)
                    .frame(width: .infinity, alignment: .leading)
    //                    .background(Color.black)
                    .foregroundColor(Color.black)
                    .bold()
                    .font(.headline)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
//            
//            Text("Today").frame(width: .infinity).multilineTextAlignment(.leading)
//                .frame(width: .infinity, alignment: .leading)
////                    .background(Color.black)
//                .foregroundColor(Color.black)
//                .bold()
//                .font(.headline)
//                .frame(maxWidth: .infinity, alignment: .leading)
//            
            HStack{
                Image(systemName: "person.fill").frame(width: 80, height: 80).foregroundColor(Color.black).background(Color.black).clipShape(.circle)
                
                VStack{
                    
                Text("ini adalah sebuah notifikasi dari blablabaksdnfksdf")
                        .frame(maxWidth: .infinity, alignment: .leading)
                TimeUIView(time: time).frame(maxWidth: .infinity, alignment: .leading)
                    Rectangle().frame(height: 1).padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 40))
                    
                    
                    
                
                }
                
            }
            
        }.frame(maxWidth: .infinity , alignment: .leading)
    }
}

#Preview {
    ChronoView()
}

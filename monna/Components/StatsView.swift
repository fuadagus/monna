//
//  QStatsView.swift
//  monna
//
//  Created by Fuad Agus Salim on 22/04/26.
//

import SwiftUI

struct StatsView: View {
    @State var isActive: Bool = true
    @ViewBuilder
    var body: some View {
        if(isActive){
          HStack{
                        Text("15")
                            .frame(width: 24, height: 24)
                            .padding(2)
                            .foregroundColor(.black)
                            .background(.white)
                            .cornerRadius(6)
                        Text("Question Asked")
                    }.frame(maxWidth: .infinity, alignment: .leading)
                        .font(.system(size: 12))
                        .padding(5)
                        .background(.red)
                        .cornerRadius(10)
                        .overlay( RoundedRectangle(cornerRadius: 10).stroke(Color.white, lineWidth: 2))
        } else {
          HStack{
                Text("08")
                    .frame(width: 24, height: 24)
                    .padding(2)
                Text("Question Answered")
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .font(.system(size: 12))
            .padding(5)
                .cornerRadius(10)
                .overlay( RoundedRectangle(cornerRadius: 10).stroke(Color.white, lineWidth: 2))
        }
                
    }
    
    

}


extension View {
    func `if`<Content: View>(_ conditional: Bool, content: (Self) -> Content) -> some View {
         if conditional {
             return AnyView(content(self))
         } else {
             return AnyView(self)
         }
     }
}

#Preview {
    StatsView()
}

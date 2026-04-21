//
//  MainListQAView.swift
//  monna
//
//  Created by Fuad Agus Salim on 21/04/26.
//

import SwiftUI

struct MainListQAView: View {
    var body: some View {
        VStack{
            
            Text("Questions Need Your Answer to Solve").font(.title2).bold().frame(maxWidth: .infinity, alignment: .leading)
            
            VStack{
                
                ScrollView{
                    QAView(questionText: "Ini adalah pertanyaan panjang")
                    QAView(questionText: "Ini adalah pertanyaan panjang bangetttt")
                    QAView(questionText: "Ini adalah pertanyaan panjang bangetttt khgjhgj")
                    QAView(questionText: "Ini adalah pertanyaan panjang bangetttt khgjhgj")
                    QAView(questionText: "Ini adalah pertanyaan panjang bangetttt khgjhgj")
                    QAView(questionText: "Ini adalah pertanyaan panjang bangetttt khgjhgj")
                }
              
            }
            
        }.frame(width: .infinity)
        .padding(EdgeInsets(top: 14, leading: 14, bottom: 0, trailing: 14))
//                            .cornerRadius(10)
        .background(Color.white)
        .compositingGroup()
        
//                            .cornerRadius(10)
        .shadow(radius: 8, y: 4)
    }
}

#Preview {
    MainListQAView()
}

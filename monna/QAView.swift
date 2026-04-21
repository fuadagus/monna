//
//  QAView.swift
//  monna
//
//  Created by Fuad Agus Salim on 21/04/26.
//

import SwiftUI

struct QAView: View {
    
    @State private var question:String = ""
    var body: some View {
        
        VStack(alignment: .leading){
            Text("Python").frame(width: 80, height: 20, alignment: Alignment(horizontal: .center, vertical: .top))
                .foregroundColor(Color.blue)
                .bold()
                .padding(EdgeInsets(top: 2, leading: 16, bottom: 2, trailing: 16))
                .background{
                RoundedRectangle(cornerRadius: 20)
                        .foregroundColor(Color.white)
            }
            
            Text("How to make a questionasdfadfa aksdjnfkajdf akjsdfnakjdnf aksdjfnjkdfn akjdfnajdf akjfnjfdna akjfnjf ksjdfnjkf akjdnfjkf akdjnf?").frame(maxWidth: .infinity, maxHeight: 80, alignment: Alignment(horizontal: .leading, vertical: .top)).foregroundColor(Color.black).font(.title).bold().minimumScaleFactor(0.1)
            HStack{
                TextField(
                    "Type your solution here!",
                    text: $question
                )
                .textInputAutocapitalization(.never)
                .disableAutocorrection(true)
                .border(.secondary).foregroundColor(Color.white)
                
                Button{
                    print("Tes Tombol")
                } label: {
                    Image(systemName: "paperplane")
                }
            }
        }.frame(width: .infinity, height: .infinity, alignment: Alignment(horizontal: .leading, vertical: .top)).multilineTextAlignment(.leading).padding(10).background(Color.qaBackgroundColorOrange).clipShape( RoundedRectangle(cornerRadius: 10))
        
        
        
        
    }
}

#Preview {
    QAView()
}

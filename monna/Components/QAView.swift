//
//  QAView.swift
//  monna
//
//  Created by Fuad Agus Salim on 21/04/26.
//

import SwiftUI

struct QAView: View {
   var questionText: String = ""
    
    @State private var answerInput:String = ""
    var body: some View {
        ZStack{
            VStack(alignment: .leading){
                Text("Python").frame(width: 80, height: 20, alignment: Alignment(horizontal: .center, vertical: .top))
                    .foregroundColor(Color.blue)
                    .bold()
                    .padding(EdgeInsets(top: 2, leading: 16, bottom: 2, trailing: 16))
                    .background{
                    RoundedRectangle(cornerRadius: 20)
//                            .background(Color.white)
//                    .foregroundColor(Color.white)
                    }.foregroundColor(Color.white)
                
                Text(questionText).frame(maxWidth: .infinity, maxHeight: 80, alignment: Alignment(horizontal: .leading, vertical: .top))
                    .foregroundColor(Color.black)
                    .font(.title)
                    .bold()
                    .minimumScaleFactor(0.1)
                HStack{
                    TextField(
                        "Type your solution here!",
                        text: $answerInput
                    )
                    .foregroundColor(Color.white)
                    .frame(width: .infinity)
                       
    //                .textInputAutocapitalization(.never)
    //                .disableAutocorrection(true)
    //                .border(.secondary).foregroundColor(Color.white)
                    
                    Button{
                        print("Tes Tombol")
                    } label: {
                        Image(systemName: "paperplane.circle").foregroundColor(Color.white)
                    }
                }
                .padding(10)
                .background(Color.qaBackgroundColorOrange)
                .cornerRadius(10)
            }.frame(width: .infinity, height: .infinity, alignment: Alignment(horizontal: .leading, vertical: .top)).multilineTextAlignment(.leading)
                .padding(20)
//                .background(Color.qaBackgroundColorOrange)
    //            .opacity(0.1)
                .clipShape( RoundedRectangle(cornerRadius: 10))
                RoundedRectangle(cornerRadius: 20).frame(width: .infinity, height: 200)
                .foregroundColor(Color.qaBackgroundColorOrange)
                .opacity(0.2)
                .zIndex(-1)
        }
        
        
    }
}

#Preview {
    QAView()
}

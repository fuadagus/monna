//
//  SecondaryQAView.swift
//  monna
//
//  Created by Fuad Agus Salim on 22/04/26.
//

import SwiftUI

struct SecondaryQAView: View {
    var questionText: String = "Sebuah pertanyaan"
    var isPending: Bool = false
     
     @State private var answerInput:String = ""
    
    @ViewBuilder
    var body: some View {
        ZStack{
            VStack(alignment: .leading){
                HStack{
                    
                    Text("Python").frame(width: 80, height: 32, alignment: .center)
                        .foregroundColor(Color.topicLabelColorBlue)
                 
                        .padding(.horizontal, 16)
                        .background{
                            RoundedRectangle(cornerRadius: 20)
                                .foregroundColor(Color.topicLabelColorBlue)
                                .opacity(0.16)
                        }
                    Spacer()
                    
                    if isPending    {
                        HStack{
                            Image(systemName: "clock")
                            Text("Pending").frame(height: 32)
                        }.frame(height: 32).padding(.horizontal, 20).foregroundColor(.white).background(Color.statusLabelColorPending).cornerRadius(20)
                    
                        
                    } else {
                        HStack{
                            Image(systemName: "checkmark.seal.fill")
                            Text("Answered").frame(height: 32)
                        }.frame(height: 32).padding(.horizontal, 20).foregroundColor(.white).background(Color.statusLabelColorAnswered).cornerRadius(20)
                        
                    }
                    
                }
                Text(questionText).frame(maxWidth: .infinity, maxHeight: 80, alignment: Alignment(horizontal: .leading, vertical: .top))
                    .foregroundColor(Color.black)
                    .font(.title)
                    .bold()
                    .minimumScaleFactor(0.1)
                
                TimeUIView(time: 60)

            }.frame(width: .infinity, height: .infinity, alignment: Alignment(horizontal: .leading, vertical: .top)).multilineTextAlignment(.leading)
                .padding(20)
                .clipShape( RoundedRectangle(cornerRadius: 10))
                RoundedRectangle(cornerRadius: 20).frame(width: .infinity, height: 200)
                .foregroundColor(.white)
                .zIndex(-1)
                .shadow(radius: 8, y: 4)
        }
    }
}

#Preview {
    SecondaryQAView()
}

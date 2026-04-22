//
//  MainCardView.swift
//  monna
//
//  Created by Fuad Agus Salim on 21/04/26.
//

import SwiftUI

struct MainCardView: View {
    @State var questionText: String = "Ini adalah sebuah pertanyaan yang sangat bagus"
    @State private var questionInput:String = ""
    var body: some View {
        VStack{
            
            RoundedRectangle(cornerRadius: 20)
            
            
                .fill(Color(UIColor.mainCardColorBlue))
                .frame(maxWidth: .infinity,  alignment: Alignment(horizontal: .leading, vertical: .top))
                    .scaledToFit()
                .overlay {
                    //                                    Title, Sub and The Q
                    VStack{
                        Text("Challenge yourself to answer").bold().frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading).foregroundColor(Color.white)
                            .scaledToFit()
                        
                        Text("The Great Questions").frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading).font(.title).bold().foregroundColor(Color.white)
                            .scaledToFit()
                        ZStack{
                            Image("Bubble")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                
                            Text(questionText).multilineTextAlignment(.center).minimumScaleFactor(0.1).frame(maxWidth: .infinity, alignment: .center ).padding( EdgeInsets(top: 37, leading: 57, bottom: 57, trailing: 57)).foregroundColor(Color.black)
                                .bold()
                        }.frame(maxWidth: .infinity)
//                        HStack{
//                            Text("Some great question").frame(maxWidth: .infinity, alignment: .leading).foregroundColor(Color.white)
//                        }
                        //                                       Question Input
                        HStack{
                            TextField(
                                "Type your solution here!",
                                text: $questionInput
                            )
                            .textInputAutocapitalization(.never)
                            .disableAutocorrection(true)
//                            .padding(5)
//                            .frame(height: 34)
//                            .background(Color.qaBackgroundColorOrange)
//                            .cornerRadius(10)
//                            .padding(5)
//                            .background(.white)
//                            .cornerRadius(10)
                            
                            Button{
                                
                            } label: {
                                Image(systemName: "paperplane.circle").fontWeight(.bold).clipShape(.circle)
                                    .font(.title)
                                    .bold()
                                    .foregroundColor(Color.white)
                            }
                        }.frame(width: .infinity, alignment: Alignment(horizontal: .leading, vertical: .top) ).padding(10)
                            .frame(height: 40)
                            .background(Color.qaBackgroundColorOrange)
                            .cornerRadius(10)
                            .padding(5)
                            .background(.white)
                            .cornerRadius(10)
                        
                    }
                    .padding(24)
                }
        }
    }
}

#Preview {
    MainCardView()
}

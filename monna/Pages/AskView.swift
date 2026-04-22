//
//  AskView.swift
//  monna
//
//  Created by Fuad Agus Salim on 22/04/26.
//

import SwiftUI

struct AskView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(.systemBackground)
                    .edgesIgnoringSafeArea(.all)
                VStack{
                    VStack{
                        HStack{
                            Text("Select the topic")
                            Spacer()
                            Image(systemName: "chevron.down")
                        }.frame(maxWidth: .infinity, alignment: .leading)
                            .padding(10)
                            .background(Color.qaBackgroundColorOrange).cornerRadius(12).foregroundColor(Color.white).bold()
                        Text("Question:").bold().padding(.top, 20)
                        TextField("Type your question here..", text: .constant("Tes")).frame(maxWidth: .infinity).padding(10).frame(height: 45)
                            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.black).fill(
                                .shadow(.inner(radius: 4))
                            ).foregroundColor(Color.white)
                            )
                        Text("Elaboration:").bold().padding(.top, 20)
                        TextField("Explane more", text: .constant("Tes")).frame(maxWidth: .infinity).padding(10).frame(height: 145)
                            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.black).fill(
                                .shadow(.inner(radius: 4))
                            ).foregroundColor(Color.white)
                            
//                                .fill(.shadow(.inner(radius: 8, y: 4))).foregroundColor(Color.white)
                            )
//                            .foregroundStyle(.red)
                        Button{
                            
                        } label: {
                            Text("Submit").padding(.horizontal, 40).padding()
                                .background(Color.blue)
                                .foregroundColor(.white)
                                .cornerRadius(20)
                                .frame(maxWidth: .infinity)
                                .padding(20)
                                .bold()
                                
                        }
                    }.padding(20).frame(maxWidth: .infinity/2).background(Color.white).compositingGroup().cornerRadius(20).shadow(radius: 5)
                    }.toolbar{
                        
                        ToolbarItem(placement: .navigationBarLeading){
                            Image(systemName: "person.fill")
                        }
                        
                        ToolbarItem(placement: .navigationBarTrailing){
                            NavigationLink(destination: NotificationView()){
                                Image(systemName: "bell.badge")
                            }
                            
                        }
                    }
                    .padding(20)
                }
            }
    }
}

#Preview {
    AskView()
}

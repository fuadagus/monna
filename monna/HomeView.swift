//
//  HomeView.swift
//  monna
//
//  Created by Fuad Agus Salim on 20/04/26.
//

import SwiftUI

struct HomeView: View {
    
    @State private var question: String = ""
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(.systemBackground)
                    .edgesIgnoringSafeArea(.all)
                VStack{
                    VStack{
                        VStack{
                            RoundedRectangle(cornerRadius: 20)
                            
                                .fill(Color(UIColor.mainCardColorBlue))
                                .frame(maxWidth: .infinity,  alignment: Alignment(horizontal: .leading, vertical: .top))
                                .scaledToFit()
                                .overlay {
                                    //                                    Title, Sub and The Q
                                    VStack{
                                        Text("Challenge yourself to answer").frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading).foregroundColor(Color.white)
                                            .scaledToFit()
                                        
                                        
                                        Text("The Great Questions").frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading).font(.title).bold().foregroundColor(Color.white)
                                            .scaledToFit()
                                        HStack{
                                            Text("Some great question").frame(maxWidth: .infinity, alignment: .leading).foregroundColor(Color.white)
                                        }
                                        //                                       Question Input
                                        HStack{
                                            TextField(
                                                "Type your solution here!",
                                                text: $question
                                            )
                                            .textInputAutocapitalization(.never)
                                            .disableAutocorrection(true)
                                            .border(.secondary)
                                            .background(.white)
                                            .frame(height: 50)
                                            
                                            Button{
                                                
                                            } label: {
                                                Image(systemName: "paperplane").fontWeight(.bold).clipShape(.circle)
                                                   
                                            }
                                        }.frame(width: .infinity, alignment: Alignment(horizontal: .leading, vertical: .top) )
                                        
                                    }.padding(20)
                                }
                            
                            //                        Spacer()
                            
                            
                            VStack{
                                
                                Text("Questions Need Your Answer to Solve").font(.title3).bold(true).frame(maxWidth: .infinity, alignment: .leading)
                                
                                VStack{
                                    VStack{
                                        Text("Python").frame(maxWidth: .infinity, alignment: .leading)
                                        Text("How to deploy python project").frame(maxWidth: .infinity, alignment: .leading)
                                        HStack{
                                            TextField(
                                                "Type your solution here!",
                                                text: $question
                                            )
                                            
                                            
                                            .textInputAutocapitalization(.never)
                                            .disableAutocorrection(true)
                                            .border(.secondary)
                                            
                                            
                                            
                                            Button("Send"){
                                                print("Tes Tombol")
                                            }
                                        }
                                    }
                                }
                                
                            }
                            
                        }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .init(horizontal: .center, vertical: .top))
                    }.toolbar{
                        
                        ToolbarItem(placement: .navigationBarLeading){
                            Image(systemName: "person.fill")
                        }
                        
                        ToolbarItem(placement: .navigationBarTrailing){
                            NavigationLink(destination: NotificationView()){
                                Image(systemName: "bell.badge")
                            }
                            
                        }
                    }.padding(CGFloat(20))
                }
            }
        }
        
//        func buttonGreatQ(){
//            print("The button has been clicked")
//        }
    }
}

#Preview {
    HomeView()
}

//
//  HomeView.swift
//  monna
//
//  Created by Fuad Agus Salim on 20/04/26.
//

import SwiftUI

struct HomeView: View {
    
    @State private var username: String = ""



    var body: some View {
        NavigationStack {
            ZStack {
                Color(.systemBackground)
                    .edgesIgnoringSafeArea(.all)
                VStack{
                    VStack{
                        VStack{
                            
                        

                        VStack{
                            Text("Challenge yourself to answer").frame(maxWidth: .infinity, alignment: .leading)
                            Text("The Great Questions").frame(maxWidth: .infinity, alignment: .leading)
                                .font(.largeTitle).bold(true)
                            HStack{
                                Text("Some great question").frame(maxWidth: .infinity, alignment: .leading)
                            }
                            
                        }
                        HStack{
                            Text("Type your solution here").frame(maxWidth: .infinity, alignment: .leading)
                            
                            Button("Send"){
                                print("Tes Tombol")
                            }
                            
                        }
                            
                        }.background(Color(.secondarySystemBackground))
                        Spacer()
                        
                        
                        VStack{
                            
                            Text("Questions Need Your Answer to Solve").font(.title3).bold(true).frame(maxWidth: .infinity, alignment: .leading)
                            
                            VStack{
                                VStack{
                                    Text("Python").frame(maxWidth: .infinity, alignment: .leading)
                                    Text("How to deploy python project").frame(maxWidth: .infinity, alignment: .leading)
                                    HStack{
                                        TextField(
                                            "Type your solution here!",
                                            text: $username
                                        )
                                       
                        
                                        .textInputAutocapitalization(.never)
                                        .disableAutocorrection(true)
                                        .border(.secondary)
                                        
                                        
                                        
                                        Button("Great Question"){
                                            print("Tes Tombol")
                                        }
                                    }
                                }
                            }
                            
                        }
                        
                    }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .init(horizontal: .center, vertical: .center))
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
    
    func buttonGreatQ(){
        print("The button has been clicked")
    }
}

#Preview {
    HomeView()
}

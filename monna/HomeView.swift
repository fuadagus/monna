//
//  HomeView.swift
//  monna
//
//  Created by Fuad Agus Salim on 20/04/26.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(.systemBackground)
                    .edgesIgnoringSafeArea(.all)
                VStack{
                    
                    VStack{
                        VStack{
                            Text("Challenge yourself to answer")
                            Text("The Great Questions")
                                .font(.largeTitle).bold(true)
                            HStack{
                                Text("Some great question")
                            }
                            
                        }
                        HStack{
                            Text("Type your solution here")
                            
                            Button("Great Question"){
                                print("Tes Tombol")
                            }
                            
                        }
                        VStack{
                            
                        }
                        
                    }
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

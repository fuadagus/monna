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
                            MainCardView()
                       
                            MainListQAView()
                          
                           
                            
                        }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .init(horizontal: .center, vertical: .top))
                            .padding(.horizontal, 20)
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
//                    .padding(20)
                }
            }
        }
        
//        func buttonGreatQ(){
//            print("The button has been clicked")
//        }
    
    
    
    }
//}


#Preview {
    HomeView()
}

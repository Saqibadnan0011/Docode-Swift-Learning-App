//
//  Docode-LearningApp.swift
//  Docode-LearningApp
//
//  Created by Saqib Adnan on 01/01/2024.
//

import SwiftUI


struct ContentView: View {
    
    @EnvironmentObject var model: ContentModel
    
    var body: some View {
        ZStack {
            Image("Spline")
                .resizable()
                .scaledToFill()
                .frame(width: 400, height: 400)
                .blur(radius: 30)
                .ignoresSafeArea([.all])
            ScrollView{
                
                LazyVStack{
                    //Confirm that current module is set
                    
                    if model.currentModule != nil{
                        ForEach(0..<model.currentModule!.content.lessons.count){ index in
                            NavigationLink(
                                destination:
                                    ContentDetailView()
                                    .onAppear(perform: {
                                        model.beginLesson(index)
                                    }),
                                label: {
                                    ContentViewRow(index: index)
                                })
                            
                            
                        }
                    }
                }
                .accentColor(.black)
                .padding()
                .navigationBarTitle("Learn \(model.currentModule?.category ?? "" )")
                
            }
        }
    }
}

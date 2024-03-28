//
//  Docode-LearningApp.swift
//  Docode-LearningApp
//
//  Created by Saqib Adnan on 01/01/2024.
//

import SwiftUI

struct HomeView: View {

    @EnvironmentObject var model: ContentModel

    var body: some View {
        NavigationView {
            
            ZStack {
                Image("Spline")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 400, height: 600)
                    .blur(radius: 30)
                    .ignoresSafeArea([.all])
                VStack (alignment: .leading) {
                    Text("What do you want to do today?")
                        .padding(20)
                    ScrollView {
                        
                        LazyVStack {
                            ForEach(model.modules){ module in
                                VStack(spacing: 20){
                                    
                                    NavigationLink(
                                        destination:
                                            ContentView()
                                                .onAppear(perform:{
                                                    model.beginModule(module.id)
                                                    
                                            }),
                                        tag: module.id,
                                        selection: $model.currentContentSelected,
                                        label: {
                                            //Learning Card
                                            HomeViewRow(image: module.content.image, title: "Learn \(module.category)", description: module.content.description, count: "\(module.content.lessons.count) Lessons", time: module.content.time)
                                        }
                                    )
                                    NavigationLink(
                                        destination: TestView()
                                            .onAppear(
                                                perform: {
                                                    model.beginTest(module.id)
                                                }
                                            ),
                                        tag: module.id,
                                        selection: $model.currentTestSelected,
                                        label: {
                                            //Test Card
                                            HomeViewRow(image: module.test.image, title: "\(module.category) Test", description: module.test.description, count: "\(module.test.questions.count) Lessons", time: module.test.time)
                                        }
                                    )
                                    NavigationLink(destination: EmptyView()){
                                        EmptyView()
                                    }
                                    
                                }
                            }
                            
                        }
                        .accentColor(.black)
                        .padding()
                    }
                }
                .navigationTitle("Get Started")
                .onChange(of: model.currentContentSelected, perform: { value in
                    if value == nil{
                        model.currentModule = nil
                    }
                })
                .onChange(of: model.currentTestSelected, perform: { value in
                    if value == nil{
                        model.currentModule = nil
                    }
            })
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(ContentModel())
    }
}

//
//  Docode-LearningApp.swift
//  Docode-LearningApp
//
//  Created by Saqib Adnan on 01/01/2024.
//

import SwiftUI

struct HomeViewRow: View {
    
    var image: String
    var title: String
    var description: String
    var count: String
    var time: String
    
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(.white)
                .shadow(radius: 10, x: 5, y: 10)
                .cornerRadius(10)
                .shadow(radius: 5)
                .aspectRatio(CGSize(width: 335, height: 175), contentMode: .fit)
                .padding()
            
            HStack {
                //Image
                Image(image)
                    .resizable()
                    .frame(width: 100, height: 116, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .clipShape(Circle())
                
                Spacer()
                
                //Text
                VStack(alignment: .leading, spacing: 10){
                    //Headline
                    Text(title)
                        .bold()
                    
                    //Desc
                    Text(description)
                        .padding(.bottom, 20)
                        .font(.caption)
                    //Icons
                    HStack{
                        //Number of lessons/questions
                        Image(systemName: "text.book.closed")
                            .resizable()
                            .frame(width: 15, height: 15, alignment: .center)
                        
                        Text(count)
                            .font(.caption)
                        Spacer()
                        //Time
                        Image(systemName: "clock")
                            .resizable()
                            .frame(width: 15, height: 15
                                   , alignment: .center)
                        Text(time)
                            .font(.caption)
                        
                        
                    }
                }

            }
            .padding(.horizontal,30)
        }
    }
}

//struct HomeViewRow_Previews: PreviewProvider {
//    static var previews: some View {
//        HomeViewRow(image: "swift", title: "Learn Swift", description: "some description", count: "10 Lessons", time: "2 Hours")
//    }
//}

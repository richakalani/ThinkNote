//
//  HomeScreenView.swift
//  ThinkNote
//
//  Created by Richa Kalani on 26/04/25.
//

import SwiftUI
import CoreData

struct HomeScreenView: View {
    
    @StateObject var homeScreenViewModel = HomeScreenViewModel()
    @Binding var navigationPath: [Route]
    var body: some View {
            LinearGradient(gradient: Gradient(colors: [.purple, .blue]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
                .overlay(content: {
                    VStack(content:  {
                        Text("Notes")
                            .font(.system(size: 50, weight: .medium, design: .serif))
                            .frame(maxWidth: .infinity)
                        ZStack {
                            List(homeScreenViewModel.allNotes, id: \.self) { data in
                                NoteView(title: data.title ?? "", subTitle: data.description ?? "")
                            }
                            .listRowSeparator(.hidden)
                            .listStyle(.plain)
                            .padding(.vertical, 5)
                            .scrollIndicators(.hidden)
                            .overlay(alignment: .bottomTrailing, content: {
                                Button {
                                    navigationPath.append(.detailView)
                                } label: {
                                    Image(systemName: "plus")
                                        .font(.title.weight(.regular))
                                        .padding()
                                        .background(Color.blue)
                                        .foregroundColor(.white)
                                        .frame(width: 56, height: 56)
                                        .clipShape(Circle())
                                        .shadow(radius: 4)
                                        .foregroundColor(.white)
                                }
                                
                            })
                            
                        }.background(Color.white)
                            .cornerRadius(16)
                            .shadow(radius: 4)
                            .padding()
                            .frame(height: UIScreen.main.bounds.height * 0.7, alignment: .center)
                 
                    })
                })
    }
}

struct NoteView: View {
    let title: String
    let subTitle: String
    var body: some View {
        HStack(alignment: .center) {
            VStack(alignment: .leading) {
                Text(title)
                    .font(.system(size: 25, weight: .medium, design: .rounded))
                    .foregroundStyle(.black.opacity(0.8))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .lineLimit(1)
                Text(subTitle)
                    .font(.system(size: 20, weight: .regular, design: .rounded))
                    .foregroundStyle(.black.opacity(0.5))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .lineLimit(2)
                
            }
            Spacer()
            Image(systemName: "note.text")
        }
    }
}

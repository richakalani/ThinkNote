//
//  NotesDetailsScreenView.swift
//  ThinkNote
//
//  Created by Richa Kalani on 01/05/25.
//

import SwiftUI

struct NotesDetailsScreenView: View {
    @StateObject var notesDetailsScreenViewModel = NotesDetailsScreenViewModel()
    @State var title: String = ""
    @State var description: String = ""
    @Binding var navigationPath: [Route]
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [.purple, .blue]), startPoint: .top, endPoint: .bottom)
            .ignoresSafeArea()
            .overlay(content: {
                VStack(content: {
                    RoundedRectangle(cornerRadius: 8.0)
                        .fill(Color.white)
                        .frame(width: UIScreen.main.bounds.width * 0.8, alignment: .center)
                        .frame(height: UIScreen.main.bounds.width * 0.9)
                        .overlay(content: {
                            VStack {
                                Text("New Note")
                                    .font(.system(size: 50, weight: .medium, design: .serif))
                                    .frame(maxWidth: .infinity)
                                TextField(text: $title, label: {
                                    Text("Title")
                                })
                                .padding([.leading, .trailing], 16)
                                .padding([.top, .bottom], 5)
                                .overlay(content: {
                                    Rectangle()
                                        .fill(.clear)
                                        .border(.black.opacity(0.5))
                                        .padding([.leading, .trailing], 12)
                                })
                                TextField(text: $description, label: {
                                    Text("Enter your notes...")
                                        .padding(.top, 10)
                                })
                                .padding([.leading, .trailing], 16)
                                .padding(.vertical, 50)
                                .overlay(content: {
                                    Rectangle()
                                        .fill(.clear)
                                        .border(.black.opacity(0.5))
                                        .padding([.leading, .trailing], 12)
                                })
                                Button(action: {
//                                    navigationPath.append(.homeScreenView)
                                }, label: {
                                    Text("Save")
                                })
                                .buttonStyle(.borderedProminent)
                            }
                        })
                })
            })
    }
}
//    .cornerRadius(16)
//    .shadow(radius: 4)
//    .padding()
//    .frame( height: UIScreen.main.bounds.height * 0.7, alignment: .center)

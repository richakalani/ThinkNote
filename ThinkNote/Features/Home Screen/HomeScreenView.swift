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
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink {
                    NotesDetailsScreenView()
                } label: {
                    
                    Label("Add New Note", systemImage: "plus")
                }
                ScrollView {
                    LazyVGrid(columns: [.init(), .init()]) {
                        ForEach(homeScreenViewModel.allNotes, id: \.self) { item in
                            GroupBox {
                                Text(item.description ?? "")
                            } label: {
                                Label((item.title ?? ""), systemImage: "pencil.and.list.clipboard")
                            }
                            .groupBoxStyle(.automatic)
                            
                        }
                    }
                    
                }.padding(.horizontal, 10)
            }
            
        }
    }
}

  

#Preview {
    HomeScreenView()
}

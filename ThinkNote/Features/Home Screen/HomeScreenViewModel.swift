//
//  HomeScreenViewModel.swift
//  ThinkNote
//
//  Created by Richa Kalani on 27/04/25.
//

import Foundation
class HomeScreenViewModel: ObservableObject {
    var allNotes = [NotesDataModel(title: "Title 1", description: "Title 1 Descriton"), NotesDataModel(title: "Title 2", description: "Title 2 Descriton"), NotesDataModel(title: "Title 3", description: "Title 3 Descriton"), NotesDataModel(title: "Title 4", description: "Title 4 Descriton"), NotesDataModel(title: "Title 5", description: "Title 5 Descriton")]
}

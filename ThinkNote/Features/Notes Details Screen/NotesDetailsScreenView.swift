//
//  NotesDetailsScreenView.swift
//  ThinkNote
//
//  Created by Richa Kalani on 01/05/25.
//

import SwiftUI

struct NotesDetailsScreenView: View {
    @StateObject var notesDetailsScreenViewModel = NotesDetailsScreenViewModel()
    var body: some View {
        VStack {
            TextField(text: $notesDetailsScreenViewModel.descriptionTitle) {
                
                
            }
        }
    }
}

#Preview {
    NotesDetailsScreenView()
}

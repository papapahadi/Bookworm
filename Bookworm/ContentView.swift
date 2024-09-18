//
//  ContentView.swift
//  Bookworm
//
//  Created by Jatin Singh on 14/09/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) var modelContext
    @Query var books : [Book]
    @State private var showingAddScreen = false
    
    var body: some View {
        NavigationStack {
            Text(String("\(books.count)"))
                .navigationTitle("Bookworm")
                .toolbar {
                    ToolbarItem(placement: .topBarTrailing) {
                        Button("Add Book", systemImage: "plus") {
                            showingAddScreen.toggle()
                        }
                    }
                }
        }
    }
}

#Preview {
    ContentView()
}

//
//  LibraryView.swift
//  AppleMusic_SwiftUI
//
//  Created by Anastasiia on 11/10/21.
//

import SwiftUI

struct LibraryView: View {
    
    @State private var isEmptyLibrary = true
    
    var body: some View {
        NavigationView {
            ZStack {
                if isEmptyLibrary {
                    EmptyLibraryView()
                } else {
                    FilterLibraryView()
                }
            }
            .environment(\.editMode, .constant(
                isEmptyLibrary ? EditMode.inactive : EditMode.active))
            .accentColor(.red)
            .navigationTitle("Медиатека")
            .navigationBarItems(trailing:
                                    Button(action: { isEmptyLibrary.toggle() },
                                           label: {
                if isEmptyLibrary {
                    Text("Править")
                        .foregroundColor(.red)
                } else {
                    Text("Готово")
                        .bold()
                        .foregroundColor(.red)
                }
            })
            )
        }
    }
}

// MARK: - Previews

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}

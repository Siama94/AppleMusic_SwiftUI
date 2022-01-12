//
//  SearchNavigationView.swift
//  AppleMusic_SwiftUI
//
//  Created by Anastasiia on 1/6/22.
//

import SwiftUI

struct SearchNavigationView: View {

    @Binding var searchText: String
    @State private var viewSelected = 0

    var body: some View {

        Picker(selection: $viewSelected, label: Text(""), content: {
            Text("Apple Music").tag(0)
            Text("Ваша Медиатека").tag(1)
        }).pickerStyle(SegmentedPickerStyle())

        if viewSelected == 0 {
            SearchResult(searchText: $searchText)
        } else {
            Spacer(minLength: 250)
            EmptyLibraryView()
        }
    }
}

// MARK: - Previews

struct SearchNavigationView_Previews: PreviewProvider {
    @State static var searchText = ""

    static var previews: some View {
        SearchNavigationView(searchText: $searchText)
    }
}

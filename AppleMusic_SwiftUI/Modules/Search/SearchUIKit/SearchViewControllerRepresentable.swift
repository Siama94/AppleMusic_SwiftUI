//
//  SearchViewControllerRepresentable.swift
//  AppleMusic_SwiftUI
//
//  Created by Anastasiia on 1/13/22.
//

import UIKit
import SwiftUI

struct SearchViewControllerRepresentable: UIViewControllerRepresentable {

    func makeUIViewController(context: Context) -> UIViewController {
        return CategoriesViewController()
    }

    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
    }
}

struct SearchViewControllerRepresentable_Previews: PreviewProvider {
    static var previews: some View {
        SearchViewControllerRepresentable()
    }
}

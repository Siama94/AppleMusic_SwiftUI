//
//  PlayerBlurView.swift
//  AppleMusic_SwiftUI
//
//  Created by Anastasiia on 1/7/22.
//

import Foundation
import SwiftUI

struct PlayerBlurView: UIViewRepresentable {

    func makeUIView(context: Context) -> UIVisualEffectView {

        let view = UIVisualEffectView(effect: UIBlurEffect(style: .systemChromeMaterial))
        return view
    }

    func updateUIView(_ uiView: UIVisualEffectView, context: Context) { }
}

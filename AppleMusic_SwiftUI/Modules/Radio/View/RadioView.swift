//
//  RadioView.swift
//  AppleMusic_SwiftUI
//
//  Created by Anastasiia on 11/10/21.
//

import SwiftUI

struct RadioView: View {
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack (alignment: .leading) {
                    
                    Divider()
                        .padding([.leading, .trailing])
                    
                    RadioItemView()
                        .frame(height: Metric.widthRadioItemView)
                    
                    Divider()
                        .padding([.leading, .trailing])
                    
                    Text("Станции")
                        .bold()
                        .font(.title)
                        .padding(.leading)
                    
                    StationItemView()
                }
            }
            .navigationTitle("Радио")
        }
    }
}

// MARK: - Metric

extension RadioView {

    enum Metric {
        static let widthRadioItemView: CGFloat = 360
    }
}

// MARK: - Previews

struct RadioView_Previews: PreviewProvider {
    static var previews: some View {
        RadioView()
    }
}

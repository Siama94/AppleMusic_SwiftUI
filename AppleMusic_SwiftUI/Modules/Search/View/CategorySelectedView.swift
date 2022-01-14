//
//  CategorySelectedView.swift
//  AppleMusic_SwiftUI
//
//  Created by Anastasiia on 1/6/22.
//

import SwiftUI

struct CategorySelectedView: View {
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack {

                RadioItemView()

                HStack {
                    Text("Настроение - осень")
                        .font(.title2).bold()
                        .padding(.trailing, Metric.leadingPaddingForText)

                    Text("Cм. все")
                        .foregroundColor(.pink)
                }

                CateroriesTracksView()
            }
        }
        .navigationBarTitle(Text("Зимнее время"))
        .navigationBarItems(trailing: Button(action: {}, label: {
            Image(systemName: "ellipsis.circle").foregroundColor(.pink)
        }))
    }
}



extension CategorySelectedView {
    enum Metric {
        static let leadingPaddingForText: CGFloat = 90
    }
}

// MARK: - Previews

struct CategorySelectedView_Previews: PreviewProvider {
    static var previews: some View {
        CategorySelectedView()
    }
}

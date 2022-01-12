//
//  RadioItemView.swift
//  AppleMusic_SwiftUI
//
//  Created by Anastasiia on 11/20/21.
//

import SwiftUI

struct RadioItemView: View {
    
    @ObservedObject var dataModel = RadioItemsPublishedData()
    private let rows = [GridItem(.fixed(Metric.rowGridItem))]

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: rows, alignment: .top) {
                ForEach(dataModel.data, id: \.self) { data in
                    VStack(alignment: .leading) {
                        
                        Text(data.category.rawValue)
                            .foregroundColor(.secondary)
                            .fontWeight(.medium)
                            .font(.system(size: Metric.sizeFontCategory))
                        
                        Text(data.name)
                            .font(.system(size: Metric.sizeFontName))
                        
                        Text(data.title)
                            .foregroundColor(.secondary)
                            .font(.system(size: Metric.sizeFontTitle))
                        
                        Image(data.image)
                            .resizable()
                            .frame(width: Metric.widthForImage, height: Metric.heightForImage)
                            .cornerRadius(Metric.cornerRadiusForImage)
                    }
                }
            }.padding()
        }
    }
}

// MARK: - Metric

extension RadioItemView {

    enum Metric {

        static let rowGridItem: CGFloat = 330

        static let sizeFontCategory: CGFloat = 15
        static let sizeFontName: CGFloat = 22
        static let sizeFontTitle: CGFloat = 22

        static let widthForImage: CGFloat = 380
        static let heightForImage: CGFloat = 260

        static let cornerRadiusForImage: CGFloat = 5
    }
}

// MARK: - Previews

struct RadioItemView_Previews: PreviewProvider {
    static var previews: some View {
        RadioItemView()
    }
}

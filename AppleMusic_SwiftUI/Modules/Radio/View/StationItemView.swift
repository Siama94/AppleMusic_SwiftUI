//
//  StationItemView.swift
//  AppleMusic_SwiftUI
//
//  Created by Anastasiia on 11/20/21.
//

import SwiftUI

struct StationItemView: View {
    
    private let stationItems = StationItemsModels.data
    private let columns = [GridItem(.flexible())]
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            LazyVGrid(columns: columns, alignment: .leading) {
                
                ForEach(stationItems, id: \.self) { data in
                    HStack() {
                        
                        Image(data.image)
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(Metric.cornerRadiusForImage)
                            .frame(width: Metric.widthForImage)
                        
                        VStack(alignment:.leading) {
                            
                            Text(data.name)
                                .font(.system(size: Metric.sizeFontName))
                            
                            Text(data.title)
                                .font(.system(size: Metric.sizeFontTittle))
                                .foregroundColor(.gray)
                        }.padding()
                    }
                    Divider()
                        .padding(.leading, Metric.leadingPaddingForDivider)
                }
            }.padding([.leading, .trailing])
        }
    }
}

// MARK: - Metric

extension StationItemView {

    enum Metric {
        static let cornerRadiusForImage: CGFloat = 5
        static let widthForImage: CGFloat = 100

        static let sizeFontName: CGFloat = 18
        static let sizeFontTittle: CGFloat = 14

        static let leadingPaddingForDivider: CGFloat = 110
    }
}

// MARK: - Previews

struct StationItemView_Previews: PreviewProvider {
    static var previews: some View {
        StationItemView()
    }
}

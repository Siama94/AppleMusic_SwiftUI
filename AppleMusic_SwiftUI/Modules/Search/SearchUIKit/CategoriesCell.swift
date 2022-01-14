//
//  CategoriesCell.swift
//  AppleMusic_SwiftUI
//
//  Created by Anastasiia on 1/13/22.
//

import UIKit

class CategoriesCell: UICollectionViewCell {

    // MARK: - Initialization

    override init(frame: CGRect) {
        super.init(frame: frame)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func layoutSubviews() {
        setupHierarchy()
        setupLayout()
        setupImageView()
    }

    // MARK: - Properties

    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.font = Metric.titleFont
        label.textColor = .white
        label.numberOfLines = 2

        return label
    }()

    lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        return imageView
    } ()

    // MARK: - Setup views

    private func setupHierarchy() {
        contentView.addSubview(imageView)
        contentView.addSubview(titleLabel)
    }

    private func setupImageView() {
        imageView.clipsToBounds = true
        imageView.layer.masksToBounds = true
        imageView.layer.cornerRadius = 5
        imageView.contentMode = .scaleAspectFill
    }

    private func setupLayout() {
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        imageView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([

            imageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor,
                                               constant: Metric.titleImageLeadingAnchorConstant),
            imageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor,
                                                constant: Metric.titleImageTrailingAnchorConstant),
            imageView.heightAnchor.constraint(equalToConstant: Metric.heightAnchorForImage),
            imageView.widthAnchor.constraint(equalToConstant: Metric.widthAnchorForImage),

            titleLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor,
                                            constant: Metric.titleLabelTopAnchorConstant),
            titleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor,
                                                constant: Metric.titleLabelLeadingAnchorConstant),
            titleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor,
                                                 constant: Metric.titleLabelTrailingAnchorConstant)
        ])
    }
}

// MARK: - Metric

extension CategoriesCell {
    struct Metric {
        static let titleFont = UIFont.systemFont(ofSize: 14, weight: .black)

        static let titleImageLeadingAnchorConstant: CGFloat = 5
        static let titleImageTrailingAnchorConstant: CGFloat = -5

        static let titleLabelTopAnchorConstant: CGFloat = -35
        static let titleLabelLeadingAnchorConstant: CGFloat = 15
        static let titleLabelTrailingAnchorConstant: CGFloat = -15

        static let widthAnchorForImage: CGFloat = 190
        static let heightAnchorForImage: CGFloat = 130
    }
}

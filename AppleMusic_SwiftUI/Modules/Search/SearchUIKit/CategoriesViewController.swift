//
//  CategoriesViewController.swift
//  AppleMusic_SwiftUI
//
//  Created by Anastasiia on 1/13/22.
//

import UIKit
import SwiftUI

class CategoriesViewController: UIViewController {

    private var dataModel = CategoriesItemsModel.data

    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setupHierarchy()
        setupLayout()
    }

    // MARK: - CollectionView

    private lazy var collectionView: UICollectionView = {

        let viewLayout = createCompositionalLayout()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: viewLayout)

        collectionView.delegate = self
        collectionView.dataSource = self

        collectionView.register(CategoriesCell.self, forCellWithReuseIdentifier: "CategoriesCell")

        return collectionView
    }()

    //MARK: - Setup View

    private func setupHierarchy() {
        view.addSubview(collectionView)
    }

    private func setupLayout() {

        collectionView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
            collectionView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            collectionView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor)
        ])
    }
}

extension CategoriesViewController {

    //MARK: - Settings Sections

    private func createCompositionalLayout() -> UICollectionViewCompositionalLayout {

        return UICollectionViewCompositionalLayout { _, _ in
            return self.layoutSectionCategoriesCell()
        }
    }

    private func layoutSectionCategoriesCell() -> NSCollectionLayoutSection {

        let item = NSCollectionLayoutItem(layoutSize: Metric.itemSizeCategoriesCell)
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: Metric.groupSizeCategoriesCell,
                                                       subitem: item,
                                                       count: Metric.countGroupItem)
        group.contentInsets = Metric.groupContentInsetsCategoriesCell
        let section = NSCollectionLayoutSection(group: group)

        return section
    }
}

// MARK: - UICollectionViewDelegate & UICollectionViewDataSource

extension CategoriesViewController: UICollectionViewDelegate, UICollectionViewDataSource {

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return Metric.numberOfSections
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataModel.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return setupCategoriesCell(for: indexPath)
    }

    private  func setupCategoriesCell(for indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CategoriesCell", for: indexPath) as? CategoriesCell else { return UICollectionViewCell() }

        cell.imageView = UIImageView.init(image: UIImage(named: dataModel[indexPath.row].image))
        cell.titleLabel.text = dataModel[indexPath.row].title

        return cell
    }
}

extension CategoriesViewController {

    struct Metric {
        static let numberOfSections: Int = 1
        static let countGroupItem: Int = 2

        static let groupSizeCategoriesCell = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
                                                                    heightDimension: .fractionalHeight(0.25))

        static let itemSizeCategoriesCell = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
                                                                   heightDimension: .fractionalHeight(1)
        )

        static let groupContentInsetsCategoriesCell = NSDirectionalEdgeInsets(top: 0,
                                                                              leading: 5,
                                                                              bottom: 5,
                                                                              trailing:0)
    }
}

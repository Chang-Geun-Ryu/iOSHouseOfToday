//
//  CellMetric.swift
//  HouseOfToday
//
//  Created by CHANGGUEN YU on 19/07/2019.
//  Copyright © 2019 CHANGGUEN YU. All rights reserved.
//

import UIKit

enum Metric {
  static let lineSpacing: [CGFloat] = [20, 20, 10, 15]
  static let itemSpacing: [CGFloat] = [20, 5, 5, 15]
  static let nextOffSet: CGFloat = 0
  static let numberOfLine: CGFloat = 3
  static let numberOfItem: CGFloat = 3

  static var dealOfTodayCellSize: CGSize {
    return CGSize(width: UIScreen.main.bounds.width - 25, height: UIScreen.main.bounds.height / 4)
  }

  static var popularityKeywordCellSize: CGSize {
    return CGSize(width: UIScreen.main.bounds.width/2 - 25, height: UIScreen.main.bounds.height / 9)
  }

  static var popularityProductCellSize: CGSize {
    return CGSize(width: UIScreen.main.bounds.width/2 - 30, height: UIScreen.main.bounds.height / 2.6)
  }

  static var dealOfTodayCellInset: UIEdgeInsets {
    return .init(top: 20, left: 20, bottom: 20, right: 20)
  }

  static let inset: UIEdgeInsets = .init(top: 20, left: 20, bottom: 20, right: 20)

}

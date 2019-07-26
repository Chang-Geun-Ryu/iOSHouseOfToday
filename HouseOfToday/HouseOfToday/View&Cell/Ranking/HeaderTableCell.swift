//
//  HeaderTableCell.swift
//  HouseOfToday
//
//  Created by Daisy on 25/07/2019.
//  Copyright © 2019 CHANGGUEN YU. All rights reserved.
//

import UIKit
import SnapKit

class HeaderTableCell: UITableViewHeaderFooterView {

  static var height = UIScreen.main.bounds.height/8

  private lazy var titleLabel: UILabel = {
    let label = UILabel()
    label.text = "오늘의집 AWARDS"
    label.font = UIFont.boldSystemFont(ofSize: 20)
    addSubview(label)
    return label
  }()

  private lazy var subtitleLabel: UILabel = {
    let label = UILabel()
    label.text = "카테고리별 BEST 100"
    label.font = UIFont.boldSystemFont(ofSize: 15)
    label.textColor = .darkGray
    addSubview(label)
    return label
  }()

  override init(reuseIdentifier: String?) {
    super .init(reuseIdentifier: reuseIdentifier)
    configureLabel()
  }

  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  private func configureLabel() {

    titleLabel.snp.makeConstraints { make in
      make.leading.equalToSuperview().inset(JMetric.inset.left)
      make.centerY.equalToSuperview()
    }

    subtitleLabel.snp.makeConstraints { make in
      make.leading.equalToSuperview().inset(JMetric.inset.left)
      make.top.equalTo(titleLabel.snp.bottom).offset(10)
    }

  }

}

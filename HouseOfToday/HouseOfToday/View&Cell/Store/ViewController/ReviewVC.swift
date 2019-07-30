//
//  ReviewVC.swift
//  HouseOfToday
//
//  Created by CHANGGUEN YU on 29/07/2019.
//  Copyright © 2019 CHANGGUEN YU. All rights reserved.
//

import UIKit

class ReviewVC: UIViewController {

  private lazy var titleLabel: UILabel = {
    let label = UILabel(frame: CGRect.zero)
    label.text = "리뷰"
    label.font = UIFont.systemFont(ofSize: 20)
    view.addSubview(label)
    return label
  }()

  private lazy var reviewCountLabel: UILabel = {
    let label = UILabel(frame: CGRect.zero)
    label.text = "55,555"
    label.textColor = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
    label.font = UIFont.systemFont(ofSize: 20)
    view.addSubview(label)
    return label
  }()

  private lazy var starLabel: UILabel = {
    let label = UILabel(frame: CGRect.zero)
    label.text = "★★★★★"
    label.textColor = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
    label.font = UIFont.systemFont(ofSize: 25)
    view.addSubview(label)
    return label
  }()

  private lazy var starPointLabel: UILabel = {
    let label = UILabel(frame: CGRect.zero)
    label.text = "5.0"
    label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
    view.addSubview(label)
    return label
  }()

  private lazy var starPointHighLabel: UILabel = {
    let label = UILabel(frame: CGRect.zero)
    label.text = "/5"
    label.textColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
    view.addSubview(label)
    return label
  }()

  private lazy var purchaseSatisfactionLabel: UILabel = {
    let label = UILabel(frame: CGRect.zero)
    label.text = "55,555명의 구매만족도"
    label.textColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
    label.font = UIFont.systemFont(ofSize: 10)
    view.addSubview(label)
    return label
  }()

  private lazy var lineLabel: UILabel = {
    let label = UILabel(frame: CGRect.zero)
    label.layer.borderColor = UIColor.darkGray.cgColor
    label.layer.borderWidth = 0.5
    label.layer.addBorder([.top, .left], color: .black, width: 0.5)
    view.addSubview(label)
    return label
  }()

  private lazy var bestSortButton: UIButton = {
    let btn = UIButton(type: .custom)
    btn.setTitle("베스트순", for: .normal)
    btn.setTitleColor(.white, for: .normal)
    btn.backgroundColor = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
    btn.layer.masksToBounds = true
    btn.layer.cornerRadius = 5
    btn.addTarget(self, action: #selector(sortReviewList(_:)), for: .touchUpInside)
    view.addSubview(btn)
    return btn
  }()
  private lazy var newestSortButton: UIButton = {
    let btn = UIButton(type: .custom)
    btn.setTitle("최신순", for: .normal)
    btn.setTitleColor(.white, for: .normal)
    btn.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
    btn.layer.masksToBounds = true
    btn.layer.cornerRadius = 5
    btn.addTarget(self, action: #selector(sortReviewList(_:)), for: .touchUpInside)
    view.addSubview(btn)
    return btn
  }()
  private lazy var lowestSortButton: UIButton = {
    let btn = UIButton(type: .custom)
    btn.setTitle("낮은 평점순", for: .normal)
    btn.setTitleColor(.white, for: .normal)
    btn.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
    btn.layer.masksToBounds = true
    btn.layer.cornerRadius = 5
    btn.addTarget(self, action: #selector(sortReviewList(_:)), for: .touchUpInside)
    view.addSubview(btn)
    return btn
  }()

  private lazy var showTotalReviewButton: UIButton = {
    let btn = UIButton(type: .custom)
    btn.setTitle("555,555개 리뷰 전체보기", for: .normal)
    btn.setTitleColor(.white, for: .normal)
    btn.backgroundColor = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
    btn.layer.masksToBounds = true
    btn.layer.cornerRadius = 10
    view.addSubview(btn)
    return btn
  }()

  private lazy var sharePleaseLabel: UILabel = {
    let label = UILabel(frame: CGRect.zero)
    label.text = "이 제품을 사용하고 계신다면 리뷰를 공유해주세요."
    label.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
    label.font = UIFont.systemFont(ofSize: 15)
    label.textAlignment = .center
    view.addSubview(label)
    return label
  }()

  private lazy var reviewWriteButton: UIButton = {
    let btn = UIButton(type: .custom)

    let mutableAttributedString = NSMutableAttributedString()

    let attributes: [NSAttributedString.Key: Any] = [
      .font: UIFont.systemFont(ofSize: 20),
      .foregroundColor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    ]
    let attributeString = NSMutableAttributedString(string: "리뷰쓰기",
                                                    attributes: attributes)
    let attributes1: [NSAttributedString.Key: Any] = [
      .font: UIFont.systemFont(ofSize: 15),
      .foregroundColor: #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
    ]
    let attributeString1 = NSMutableAttributedString(string: " 포토 250P",
                                                     attributes: attributes1)
    mutableAttributedString.append(attributeString)
    mutableAttributedString.append(attributeString1)
    btn.setAttributedTitle(mutableAttributedString, for: .normal)

    btn.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
    btn.layer.borderColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
    btn.layer.borderWidth = 1.0
    btn.layer.cornerRadius = 5
    btn.layer.masksToBounds = true

    view.addSubview(btn)
    return btn
  }()

  private lazy var folwLayout: UICollectionViewFlowLayout = {
    let layout = UICollectionViewFlowLayout()
    layout.itemSize = Metric.ReviewCellSize
    layout.minimumLineSpacing = 0
    layout.sectionInset = UIEdgeInsets(top: 0, left: Metric.marginX, bottom: 0, right: Metric.marginX)
    return layout
  }()

  private lazy var collectionView: UICollectionView = {
    let colV = UICollectionView(frame: CGRect.zero, collectionViewLayout: folwLayout)
    colV.register(cell: ReviewCell.self)
    colV.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    colV.dataSource = self
    colV.delegate = self
    view.addSubview(colV)
    return colV
  }()

  private var sortedReviewList: [ProductDetail.Review] = []

  private var reviewList: [ProductDetail.Review] = []

  public var productDetailData: ProductDetail? {
    didSet {
      guard let info = productDetailData else {return print("productDetailData is nil")}

      let reviewCount = "\(formetter(price: info.reviewCount))"

      starPointLabel.text = "\(info.starAvg)"

      reviewList = info.review
      reviewCountLabel.text = reviewCount
      purchaseSatisfactionLabel.text = "\(reviewCount)의 구매만족도"
      showTotalReviewButton.setTitle("\(reviewCount)개 리뷰 전체보기 ", for: .normal)

      sortedReviewList = reviewList.sorted(by: { $0.starScore > $1.starScore })

      collectionView.reloadData()
    }
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    autolayoutViews()
  }

  // MARK: - configure
  private func autolayoutViews() {
    if titleLabel.translatesAutoresizingMaskIntoConstraints {
      titleLabel.snp.makeConstraints {
        $0.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(Metric.marginY)
        $0.leading.equalToSuperview().offset(Metric.marginX)
      }
    }

    if reviewCountLabel.translatesAutoresizingMaskIntoConstraints {
      reviewCountLabel.snp.makeConstraints {
        $0.top.equalToSuperview().offset(Metric.marginY)
        $0.leading.equalTo(titleLabel.snp.trailing).offset(5)
      }
    }

    if starLabel.translatesAutoresizingMaskIntoConstraints {
      starLabel.snp.makeConstraints {
        $0.top.equalTo(titleLabel.snp.bottom).offset(Metric.marginY*2)
        $0.leading.equalToSuperview().offset(Metric.marginX)
      }
    }

    if starPointLabel.translatesAutoresizingMaskIntoConstraints {
      starPointLabel.snp.makeConstraints {
        $0.centerY.equalTo(starLabel.snp.centerY)
        $0.leading.equalTo(starLabel.snp.trailing).offset(10)
      }
    }

    if starPointHighLabel.translatesAutoresizingMaskIntoConstraints {
      starPointHighLabel.snp.makeConstraints {
        $0.centerY.equalTo(starLabel.snp.centerY)
        $0.leading.equalTo(starPointLabel.snp.trailing)
      }
    }

    if purchaseSatisfactionLabel.translatesAutoresizingMaskIntoConstraints {
      purchaseSatisfactionLabel.snp.makeConstraints {
        $0.top.equalTo(starLabel.snp.bottom).offset(Metric.marginY/2)
        $0.leading.equalToSuperview().offset(Metric.marginX)
      }
    }

    if lineLabel.translatesAutoresizingMaskIntoConstraints {
      lineLabel.snp.makeConstraints {
        $0.top.equalTo(purchaseSatisfactionLabel.snp.bottom).offset(Metric.marginY)
        $0.leading.equalToSuperview().offset(Metric.marginX)
        $0.trailing.equalToSuperview().offset(-Metric.marginX)
        $0.height.equalTo(0.5)
      }
    }

    if bestSortButton.translatesAutoresizingMaskIntoConstraints {
      bestSortButton.snp.makeConstraints {
        $0.top.equalTo(lineLabel.snp.top).offset(Metric.marginY)
        $0.leading.equalToSuperview().offset(Metric.marginX)
        $0.height.equalTo(Metric.marginY * 2)
        $0.width.equalTo(UIScreen.main.bounds.width/4)
      }
    }

    if newestSortButton.translatesAutoresizingMaskIntoConstraints {
      newestSortButton.snp.makeConstraints {
        $0.top.equalTo(lineLabel.snp.top).offset(Metric.marginY)
        $0.leading.equalTo(bestSortButton.snp.trailing).offset(10)
        $0.height.equalTo(Metric.marginY * 2)
        $0.width.equalTo(UIScreen.main.bounds.width/4)
      }
    }

    if lowestSortButton.translatesAutoresizingMaskIntoConstraints {
      lowestSortButton.snp.makeConstraints {
        $0.top.equalTo(lineLabel.snp.top).offset(Metric.marginY)
        $0.leading.equalTo(newestSortButton.snp.trailing).offset(10)
        $0.height.equalTo(Metric.marginY * 2)
        $0.width.equalTo(UIScreen.main.bounds.width/4)
      }
    }

    if collectionView.translatesAutoresizingMaskIntoConstraints {
      collectionView.snp.makeConstraints {
        $0.top.equalTo(bestSortButton.snp.bottom)
        $0.leading.trailing.equalToSuperview()
        $0.bottom.equalTo(reviewWriteButton.snp.top)

      }
    }

    if reviewWriteButton.translatesAutoresizingMaskIntoConstraints {
      reviewWriteButton.snp.makeConstraints {
        $0.bottom.leading.trailing.equalToSuperview()
        $0.height.equalTo(MainTabBarVC.tabBarHeight)
      }
    }
  }

  private func formetter(price: Int) -> String {
    let formatter = NumberFormatter()
    formatter.numberStyle = .decimal

    return formatter.string(from: price as NSNumber) ?? ""
  }

  @objc private func sortReviewList(_ sender: UIButton) {

    bestSortButton.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
    newestSortButton.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
    lowestSortButton.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
    sender.backgroundColor = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)

    switch sender {
    case bestSortButton:
      sortedReviewList = reviewList.sorted(by: { $0.starScore > $1.starScore })
    case newestSortButton:
      sortedReviewList = reviewList.sorted(by: { $0.created > $1.created })
    case lowestSortButton:
      sortedReviewList = reviewList.sorted(by: { $0.starScore < $1.starScore })
    default:
      break
    }

    collectionView.reloadData()
  }
}

extension ReviewVC: UICollectionViewDataSource {
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return sortedReviewList.count
  }

  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeue(ReviewCell.self, indexPath)
    guard let data = productDetailData else { return cell}
    cell.reviewList = sortedReviewList[indexPath.item]
    cell.reviewTitle.text = "[\(data.brandName)] \(data.name)"
    cell.optionLabel.text = "선택: \(data.productOption[Int.random(in: 0 ..< data.productOption.count)].name)"
    return cell
  }
}

extension ReviewVC: UICollectionViewDelegate {
  func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {

    // FIXME: - cell change

  }
}

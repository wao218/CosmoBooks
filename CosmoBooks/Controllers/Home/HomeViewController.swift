//
//  HomeViewController.swift
//  CosmoBooks
//
//  Created by Wesley Osborne on 7/6/21.
//

import UIKit

class HomeViewController: UIViewController {
  
  private let totalTitle: UILabel = {
    let label = UILabel()
    label.text = "July Total"
    label.font = UIFont.boldSystemFont(ofSize: 70)
    label.textAlignment = .center
    return label
  }()
  
  private let totalLabel: UILabel = {
    let label = UILabel()
    let attributedText = NSMutableAttributedString(string: "$", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 25)])
    attributedText.append(NSAttributedString(string: "5,000", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 50)]))
    label.attributedText = attributedText
    label.textAlignment = .center
    return label
  }()
  
  private let servicesTitleLabel: UILabel = {
    let label = UILabel()
    label.text = "Services"
    label.font = UIFont.boldSystemFont(ofSize: 40)
    label.textAlignment = .center
    return label
  }()
  
  private let tipsTitleLabel: UILabel = {
    let label = UILabel()
    label.text = "Tips"
    label.font = UIFont.boldSystemFont(ofSize: 40)
    label.textAlignment = .center
    return label
  }()
  
  private let serviceTotalLabel: UILabel = {
    let label = UILabel()
    let attributedText = NSMutableAttributedString(string: "$", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 25)])
    attributedText.append(NSAttributedString(string: "4,000", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 30)]))
    label.attributedText = attributedText
    label.textAlignment = .center
    return label
  }()
  
  private let tipsTotalLabel: UILabel = {
    let label = UILabel()
    let attributedText = NSMutableAttributedString(string: "$", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 25)])
    attributedText.append(NSAttributedString(string: "1,000", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 30)]))
    label.attributedText = attributedText
    label.textAlignment = .center
    return label
  }()
  
  private let addTransactionButton: UIButton = {
    let button = UIButton()
    button.setTitle("Add Item", for: .normal)
    button.addTarget(self, action: #selector(handleAddTransaction), for: .touchUpInside)
    button.backgroundColor = UIColor.rgb(red: 17, green: 154, blue: 237)
    button.layer.cornerRadius = 50 / 2
    return button
  }()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    view.backgroundColor = .white
    title = "Overview"
    navigationController?.navigationBar.prefersLargeTitles = true
    addSubviewsAndConstraints()
  }
  
  // MARK: - Action Methods
  @objc private func handleAddTransaction() {
    print("Adding a expense or income")
  }
  
  // MARK: - Helper Methods
  private func addSubviewsAndConstraints() {
    view.addSubview(totalTitle)
    totalTitle.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.leadingAnchor, bottom: nil, trailing: view.trailingAnchor, padding: .init(top: 20, left: 0, bottom: 0, right: 0), size: .init(width: 0, height: 100))
    
    view.addSubview(totalLabel)
    totalLabel.anchor(top: totalTitle.bottomAnchor, leading: view.leadingAnchor, bottom: nil, trailing: view.trailingAnchor, padding: .init(top: 20, left: 0, bottom: 0, right: 0), size: .init(width: 0, height: 50))
    
    let titlesStackView = UIStackView(arrangedSubviews: [servicesTitleLabel, tipsTitleLabel])
    titlesStackView.distribution = .fillEqually
    
    view.addSubview(titlesStackView)
    titlesStackView.anchor(top: totalLabel.bottomAnchor, leading: view.leadingAnchor, bottom: nil, trailing: view.trailingAnchor, padding: .init(top: 50, left: 0, bottom: 0, right: 0), size: .init(width: 0, height: 50))
    
    let totalsStackView = UIStackView(arrangedSubviews: [serviceTotalLabel, tipsTotalLabel])
    totalsStackView.distribution = .fillEqually
    
    view.addSubview(totalsStackView)
    totalsStackView.anchor(top: titlesStackView.bottomAnchor, leading: view.leadingAnchor, bottom: nil, trailing: view.trailingAnchor, padding: .init(top: 20, left: 0, bottom: 0, right: 0), size: .init(width: 0, height: 50))
    
    view.addSubview(addTransactionButton)
    addTransactionButton.anchor(top: totalsStackView.bottomAnchor, leading: nil, bottom: nil, trailing: nil, centerX: view.centerXAnchor, padding: .init(top: 50, left: 0, bottom: 0, right: 0), size: .init(width: view.frame.width / 2, height: 50))
    
  }
  
}

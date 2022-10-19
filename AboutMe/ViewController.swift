//
//  ViewController.swift
//  AboutMe
//
//  Created by Adriana Belinski on 10/16/22.
//

import UIKit

class ViewController: UIViewController {
  
  // MARK: - Properties
  
  let coloredBlock: UIView = {
    let view = UIView()
    view.translatesAutoresizingMaskIntoConstraints = false
    view.backgroundColor = UIColor(named: "Sunny")
    view.layer.cornerRadius = 20
    view.layer.maskedCorners  =  [.layerMaxXMinYCorner, .layerMinXMinYCorner]
    return view
  }()
  
  let linksColoredBlock: UIView = {
    let view = UIView()
    view.translatesAutoresizingMaskIntoConstraints = false
    view.backgroundColor = UIColor(named: "Sunny")
    return view
  }()

  let myPhotoView: UIImageView = {
    
    let image = UIImage(named: "1")
  //  image.cornerRadius = 20
    
    let imageView = UIImageView()
    imageView.translatesAutoresizingMaskIntoConstraints = false
    imageView.image = image
    return imageView
  }()
  
  let name: UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.text = "Adriana Belinski"
    label.textAlignment = .center
   label.font = UIFont(name: "SF-Compact", size: 24)
    return label
  }()
  
  
  // MARK: - Lifecycle

  override func viewDidLoad() {
    super.viewDidLoad()
    
    view.backgroundColor = UIColor(named: "Biege")
    
    setUpUI()
    
    

    // Do any additional setup after loading the view.
  }

  // MARK: - UI Setup
  
  func setUpUI() {
    setUpColoredBlock()
    setUpMyPhoto()
    setUpName()
    setUpLinksColoredBlock()
  }
  
  func setUpColoredBlock() {
    view.addSubview(coloredBlock)
    
    NSLayoutConstraint.activate([
      coloredBlock.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
      coloredBlock.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
      coloredBlock.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
      coloredBlock.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.3)
    ])
  }
  
  func setUpMyPhoto() {
    view.addSubview(myPhotoView)
    
    NSLayoutConstraint.activate([
      myPhotoView.topAnchor.constraint(equalTo: coloredBlock.topAnchor, constant: 20),
      myPhotoView.leadingAnchor.constraint(equalTo: coloredBlock.leadingAnchor, constant: 63),
      myPhotoView.trailingAnchor.constraint(equalTo: coloredBlock.trailingAnchor, constant: -63),
      myPhotoView.heightAnchor.constraint(equalToConstant: 170),
    ])
  }
  
  func setUpName() {
    view.addSubview(name)
    
    NSLayoutConstraint.activate([
      name.topAnchor.constraint(equalTo: myPhotoView.bottomAnchor, constant: 20),
      name.leadingAnchor.constraint(equalTo: coloredBlock.leadingAnchor, constant: 63),
      name.trailingAnchor.constraint(equalTo: coloredBlock.trailingAnchor, constant: -63),
    ])
  }
  
  
  func setUpLinksColoredBlock() {
    view.addSubview(linksColoredBlock)
    
    NSLayoutConstraint.activate([
      linksColoredBlock.topAnchor.constraint(equalTo: coloredBlock.bottomAnchor, constant: 20),
      linksColoredBlock.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
      linksColoredBlock.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: -20),
      linksColoredBlock.heightAnchor.constraint(equalToConstant: 100),
    ])
  }
}


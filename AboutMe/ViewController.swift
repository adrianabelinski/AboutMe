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
    return view
  }()

  let myPhotoView: UIImageView = {
    
    let image = UIImage(named: "1")
    
    let imageView = UIImageView()
    imageView.translatesAutoresizingMaskIntoConstraints = false
    imageView.image = image
    return imageView
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
      myPhotoView.leadingAnchor.constraint(equalTo: coloredBlock.leadingAnchor, constant: 20),
      myPhotoView.trailingAnchor.constraint(equalTo: coloredBlock.trailingAnchor, constant: -20),
      myPhotoView.heightAnchor.constraint(equalTo: view.widthAnchor),
      myPhotoView.widthAnchor.constraint(equalToConstant: 150),
    ])
  }


}


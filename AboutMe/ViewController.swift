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
    //label.font = UIFont.systemFont(ofSize: 22, weight: .heavy)
    label.font = UIFont(name: "Comfortaa-Bold", size: 25)
    label.textColor = UIColor(named: "Orange")
  
    return label
  }()
  
  let linksColoredBlock: UIView = {
    let view = UIView()
    view.translatesAutoresizingMaskIntoConstraints = false
    view.backgroundColor = UIColor(named: "Sunny")
    return view
  }()
  
  let likesSection: UIView = {
    let view = UIView()
    view.backgroundColor = UIColor(named: "Sunny")
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
  }()
  
  let introToCodingSection: UIView = {
    let view = UIView()
    view.backgroundColor = UIColor(named: "Sunny")
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
  }()
  
  let sayHello: UIButton = {
    let button = UIButton()
    button.translatesAutoresizingMaskIntoConstraints = false
    button.backgroundColor = UIColor(named: "Orange")
    button.layer.cornerRadius = 20
    button.setTitle("Say Hello! 👋", for: .normal)
    return button
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
    setLikesSection()
    setIntroToCodingSection()
    setUpSayHello()
  }
  
  func setUpColoredBlock() {
    view.addSubview(coloredBlock)
    
    NSLayoutConstraint.activate([
      coloredBlock.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
      coloredBlock.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 40),
      coloredBlock.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -40),
      coloredBlock.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.3)
    ])
  }
  
  func setUpMyPhoto() {
    view.addSubview(myPhotoView)
    
    NSLayoutConstraint.activate([
      myPhotoView.topAnchor.constraint(equalTo: coloredBlock.topAnchor, constant: 20),
      myPhotoView.leadingAnchor.constraint(equalTo: coloredBlock.leadingAnchor, constant: 43),
      myPhotoView.trailingAnchor.constraint(equalTo: coloredBlock.trailingAnchor, constant: -43),
      myPhotoView.heightAnchor.constraint(equalToConstant: 170),
    ])
  }
  
  func setUpName() {
    view.addSubview(name)
    
    NSLayoutConstraint.activate([
      name.topAnchor.constraint(equalTo: myPhotoView.bottomAnchor, constant: 15),
      name.leadingAnchor.constraint(equalTo: coloredBlock.leadingAnchor, constant: 63),
      name.trailingAnchor.constraint(equalTo: coloredBlock.trailingAnchor, constant: -63),
    ])
  }
  
  
  func setUpLinksColoredBlock() {
    view.addSubview(linksColoredBlock)
    
    NSLayoutConstraint.activate([
      linksColoredBlock.topAnchor.constraint(equalTo: coloredBlock.bottomAnchor, constant: 20),
      linksColoredBlock.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 40),
      linksColoredBlock.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -40),
      linksColoredBlock.heightAnchor.constraint(equalToConstant: 100),
    ])
  }
  
  
  func setLikesSection() {
    view.addSubview(likesSection)
    
    NSLayoutConstraint.activate([
      likesSection.topAnchor.constraint(equalTo: linksColoredBlock.bottomAnchor, constant: 20),
      likesSection.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 40),
      likesSection.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -40),
      likesSection.heightAnchor.constraint(equalToConstant: 75),
    ])
  }
  
  func setIntroToCodingSection() {
    view.addSubview(introToCodingSection)
    
    NSLayoutConstraint.activate([
      introToCodingSection.topAnchor.constraint(equalTo: likesSection.bottomAnchor, constant: 20),
      introToCodingSection.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 40),
      introToCodingSection.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -40),
      introToCodingSection.heightAnchor.constraint(equalToConstant: 100),
    ])
  }
  
  func setUpSayHello() {
    view.addSubview(sayHello)
    
    NSLayoutConstraint.activate([
      sayHello.topAnchor.constraint(equalTo: introToCodingSection.bottomAnchor, constant: 30),
      sayHello.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 65),
      sayHello.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -65),
      sayHello.heightAnchor.constraint(equalToConstant: 75),
    ])
  }
  
}


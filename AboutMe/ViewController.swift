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
    let imageView = UIImageView()
    imageView.translatesAutoresizingMaskIntoConstraints = false
    imageView.image = image
    return imageView
  }()
  
  let name: UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.text = "Adriana Belinski"
    let attributedString = NSMutableAttributedString(string: "Adriana Belinski")
    attributedString.addAttribute(.kern, value: 1, range: NSRange(location: 0, length: attributedString.length - 1))
    label.attributedText = attributedString
    label.textAlignment = .center
    //label.font = UIFont.systemFont(ofSize: 22, weight: .heavy)
    label.font = UIFont(name: "Comfortaa-Bold", size: 23)
    label.textColor = UIColor(named: "Orange")
    return label
  }()
  
  let linksColoredBlock: UIView = {
    let view = UIView()
    view.translatesAutoresizingMaskIntoConstraints = false
    view.backgroundColor = UIColor(named: "Sunny")
    return view
  }()
  
  let linksAndLocation: UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    let attributedString = NSMutableAttributedString(string: "📍 Maple Grove, MN")
    attributedString.addAttribute(.kern, value: 1, range: NSRange(location: 0, length: attributedString.length - 1))
    label.attributedText = attributedString
    label.font = UIFont(name: "Comfortaa-Bold", size: 15)
    label.textColor = UIColor(named: "Orange")
    return label
  }()
  
  let line: UIView = {
    let view = UIView()
    view.translatesAutoresizingMaskIntoConstraints = false
    view.backgroundColor = UIColor(named: "Biege")
    return view
  }()
  
  let twitterIcon: UIImage = {
    let image = UIImage()
    return image
  }()
  
  let likesSection: UIView = {
    let view = UIView()
    view.backgroundColor = UIColor(named: "Sunny")
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
  }()
  
  let twitterIconImageView: UIImageView = {
    let image = UIImage(named: "TwitterIcon")
    let imageView = UIImageView()
    imageView.translatesAutoresizingMaskIntoConstraints = false
    imageView.image = image
    return imageView
  }()
  
  let linkedInIconImageView: UIImageView = {
    let image = UIImage(named: "LinkedInIcon")
    let imageView = UIImageView()
    imageView.translatesAutoresizingMaskIntoConstraints = false
    imageView.image = image
    return imageView
  }()
  
  let introToCodingSection: UIView = {
    let view = UIView()
    view.backgroundColor = UIColor(named: "Sunny")
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
  }()
  
  let introToCodingTitle: UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.text = "I like iOS Development because..."
    let attributedString = NSMutableAttributedString(string: "I like iOS Development because...")
    attributedString.addAttribute(.kern, value: 1, range: NSRange(location: 0, length: attributedString.length - 1))
    label.attributedText = attributedString
    label.font = UIFont(name: "Comfortaa-Bold", size: 15)
    label.textColor = UIColor(named: "Orange")
    return label
  }()
  
  let introToCodingParagraph: UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    let attributedString = NSMutableAttributedString(string: "I wanted to learn programming so I learned some Swift through online tutorials and games. I then purchased some books and finally, I joined a 10-week coding academy where I learned SwiftUI. I especially like the community of iOS developers, and I'm hoping that I can use both my eye for design and my coding skills to create fun and useful apps to be used by others around the world.")
    attributedString.addAttribute(.kern, value: 1, range: NSRange(location: 0, length: attributedString.length - 1))
    label.attributedText = attributedString
    label.lineBreakMode = .byWordWrapping
    label.numberOfLines = 0
    label.font = UIFont(name: "Comfortaa-Bold", size: 10)
    label.textColor = UIColor(named: "Orange")
    return label
  }()
  
  let sayHello: UIButton = {
    let button = UIButton()
    button.translatesAutoresizingMaskIntoConstraints = false
    button.backgroundColor = UIColor(named: "Orange")
    button.layer.cornerRadius = 20
    button.addTarget(self, action: #selector(submitButtonPressed), for: .touchUpInside)
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
    setUpLine()
    setLikesSection()
    setUpTwitterIconImageView()
    setUpLinkedInIconImageView()
    setUpIntroToCodingSection()
    setUpIntroToCodingTitle()
    setUpIntroToCodingParagraph()
    setUpSayHello()
    setUpLinksAndLocation()
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
  
  func setUpLinksAndLocation() {
    view.addSubview(linksAndLocation)
    NSLayoutConstraint.activate([
      linksAndLocation.topAnchor.constraint(equalTo: linksColoredBlock.topAnchor, constant: 13),
      linksAndLocation.leadingAnchor.constraint(equalTo: linksColoredBlock.leadingAnchor, constant: 10),
      linksAndLocation.trailingAnchor.constraint(equalTo: linksColoredBlock.trailingAnchor, constant: -10),
    ])
  }
  
  func setUpLine() {
    view.addSubview(line)
    
    NSLayoutConstraint.activate([
      line.topAnchor.constraint(equalTo: linksColoredBlock.topAnchor, constant: 40),
      line.bottomAnchor.constraint(equalTo: linksColoredBlock.bottomAnchor, constant: -58),

      line.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 40),
      line.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -40),
      line.heightAnchor.constraint(equalToConstant: 100),
    ])
  }
  
  func setLikesSection() {
    view.addSubview(likesSection)
    
    NSLayoutConstraint.activate([
      likesSection.topAnchor.constraint(equalTo: linksColoredBlock.bottomAnchor, constant: 20),
      likesSection.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 40),
      likesSection.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -40),
      likesSection.heightAnchor.constraint(equalToConstant: 60),
    ])
  }
  
  func setUpTwitterIconImageView() {
    view.addSubview(twitterIconImageView)
    
    NSLayoutConstraint.activate([
      twitterIconImageView.topAnchor.constraint(equalTo: likesSection.topAnchor, constant: 8),
      twitterIconImageView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10),
      twitterIconImageView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -365),
      twitterIconImageView.heightAnchor.constraint(equalToConstant: 18),
    ])
  }
  
  func setUpLinkedInIconImageView() {
    view.addSubview(linkedInIconImageView)
    
    NSLayoutConstraint.activate([
      linkedInIconImageView.topAnchor.constraint(equalTo: twitterIconImageView.bottomAnchor, constant: 10),
      linkedInIconImageView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10),
      linkedInIconImageView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -365),
      linkedInIconImageView.heightAnchor.constraint(equalToConstant: 18),
    ])
  }
  
  func setUpIntroToCodingSection() {
    view.addSubview(introToCodingSection)
    
    NSLayoutConstraint.activate([
      introToCodingSection.topAnchor.constraint(equalTo: likesSection.bottomAnchor, constant: 20),
      introToCodingSection.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 40),
      introToCodingSection.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -40),
      introToCodingSection.heightAnchor.constraint(equalToConstant: 130),
    ])
  }
  
  func setUpIntroToCodingTitle() {
    view.addSubview(introToCodingTitle)
    
    NSLayoutConstraint.activate([
      introToCodingTitle.topAnchor.constraint(equalTo: introToCodingSection.topAnchor, constant: 13),
      introToCodingTitle.leadingAnchor.constraint(equalTo: introToCodingSection.leadingAnchor, constant: 10),
      introToCodingTitle.trailingAnchor.constraint(equalTo: introToCodingSection.trailingAnchor, constant: -10),
    ])
  }
  
  func setUpIntroToCodingParagraph() {
    view.addSubview(introToCodingParagraph)
    
    NSLayoutConstraint.activate([
      introToCodingParagraph.topAnchor.constraint(equalTo: introToCodingSection.topAnchor, constant: 37),
      introToCodingParagraph.leadingAnchor.constraint(equalTo: introToCodingSection.leadingAnchor, constant: 10),
      introToCodingParagraph.trailingAnchor.constraint(equalTo: introToCodingSection.trailingAnchor, constant: -10),
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
  
  
  @objc func submitButtonPressed(){
    
    let alertController = UIAlertController(title: "Hey there! It's nice to meet you.", message: nil, preferredStyle: .alert)
    alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
    present(alertController, animated: true, completion: nil)
  }
  
  /*
  @objc func buttonPressed() {
    print("Push up pressed")
  }
  */
  
}


//
//  ViewController.swift
//  AboutMe
//
//  Created by Adriana Belinski on 10/16/22.
//

import UIKit

class ViewController: UIViewController {
  
  
  
  // MARK: - Properties
  
  let roundedPhotoView: UIView = {
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
  
  //End of my photo, begining of location and links
  
  let locationAndLinksView: UIView = {
    let view = UIView()
    view.translatesAutoresizingMaskIntoConstraints = false
    view.backgroundColor = UIColor(named: "Sunny")
    return view
  }()
  
  let locationLabel: UILabel = {
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
  
  //Start of likes section
  
  let likesSectionView: UIView = {
    let view = UIView()
    view.backgroundColor = UIColor(named: "Sunny")
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
  }()
  
  let thingsILoveLabel: UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    let attributedString = NSMutableAttributedString(string: "❤️  Tea, Plants, Hanging out with friends")
    attributedString.addAttribute(.kern, value: 1, range: NSRange(location: 0, length: attributedString.length - 1))
    label.attributedText = attributedString
    label.font = UIFont(name: "Comfortaa-Bold", size: 12)
    label.textColor = UIColor(named: "Orange")
    return label
  }()
  
  let favoriteFoodLabel: UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    let attributedString = NSMutableAttributedString(string: "🍴  Korean BBQ")
    attributedString.addAttribute(.kern, value: 1, range: NSRange(location: 0, length: attributedString.length - 1))
    label.attributedText = attributedString
    label.font = UIFont(name: "Comfortaa-Bold", size: 12)
    label.textColor = UIColor(named: "Orange")
    return label
  }()
  
  let favoriteMovieLabel: UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    let attributedString = NSMutableAttributedString(string: "📺  Rick Steve's Europe")
    attributedString.addAttribute(.kern, value: 1, range: NSRange(location: 0, length: attributedString.length - 1))
    label.attributedText = attributedString
    label.font = UIFont(name: "Comfortaa-Bold", size: 12)
    label.textColor = UIColor(named: "Orange")
    return label
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
    setUpLocationAndLinksView()
    setUpLocationLabel()
    setUpLine()
    setUpTwitterIconImageView()
    setUpLinkedInIconImageView()
    setUpLikesSection()
    setUpThingsILoveLabel()
    setUpFavoriteFoodLabel()
    setUpFavoriteMovieLabel()
    setUpIntroToCodingSection()
    setUpIntroToCodingTitle()
    setUpIntroToCodingParagraph()
    setUpSayHello()
  }
  
  func setUpColoredBlock() {
    view.addSubview(roundedPhotoView)
    
    NSLayoutConstraint.activate([
      roundedPhotoView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
      roundedPhotoView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 40),
      roundedPhotoView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -40),
      roundedPhotoView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.3)
    ])
  }
  
  func setUpMyPhoto() {
    view.addSubview(myPhotoView)
    
    NSLayoutConstraint.activate([
      myPhotoView.topAnchor.constraint(equalTo: roundedPhotoView.topAnchor, constant: 20),
      myPhotoView.leadingAnchor.constraint(equalTo: roundedPhotoView.leadingAnchor, constant: 43),
      myPhotoView.trailingAnchor.constraint(equalTo: roundedPhotoView.trailingAnchor, constant: -43),
      myPhotoView.heightAnchor.constraint(equalToConstant: 170),
    ])
  }
  
  func setUpName() {
    view.addSubview(name)
    
    NSLayoutConstraint.activate([
      name.topAnchor.constraint(equalTo: myPhotoView.bottomAnchor, constant: 15),
      name.leadingAnchor.constraint(equalTo: roundedPhotoView.leadingAnchor, constant: 63),
      name.trailingAnchor.constraint(equalTo: roundedPhotoView.trailingAnchor, constant: -63),
    ])
  }
  
  
  func setUpLocationAndLinksView() {
    view.addSubview(locationAndLinksView)
    
    NSLayoutConstraint.activate([
      locationAndLinksView.topAnchor.constraint(equalTo: roundedPhotoView.bottomAnchor, constant: 20),
      locationAndLinksView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 40),
      locationAndLinksView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -40),
      locationAndLinksView.heightAnchor.constraint(equalToConstant: 100),
    ])
  }
  
  func setUpLocationLabel() {
    view.addSubview(locationLabel)
    NSLayoutConstraint.activate([
      locationLabel.topAnchor.constraint(equalTo: locationAndLinksView.topAnchor, constant: 13),
      locationLabel.leadingAnchor.constraint(equalTo: locationAndLinksView.leadingAnchor, constant: 10),
      locationLabel.trailingAnchor.constraint(equalTo: locationAndLinksView.trailingAnchor, constant: -10),
    ])
  }
  
  func setUpLine() {
    view.addSubview(line)
    
    NSLayoutConstraint.activate([
      line.topAnchor.constraint(equalTo: locationAndLinksView.topAnchor, constant: 40),
      line.bottomAnchor.constraint(equalTo: locationAndLinksView.bottomAnchor, constant: -58),

      line.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 40),
      line.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -40),
      line.heightAnchor.constraint(equalToConstant: 100),
    ])
  }
  
  func setUpTwitterIconImageView() {
    locationAndLinksView.addSubview(twitterIconImageView)
    
    NSLayoutConstraint.activate([
      twitterIconImageView.topAnchor.constraint(equalTo: locationAndLinksView.topAnchor, constant: 50),
      twitterIconImageView.leadingAnchor.constraint(equalTo: locationAndLinksView.leadingAnchor, constant: 10),
      twitterIconImageView.heightAnchor.constraint(equalToConstant: 18),      twitterIconImageView.widthAnchor.constraint(equalToConstant: 18),
    ])
  }
  
  func setUpLinkedInIconImageView() {
    locationAndLinksView.addSubview(linkedInIconImageView)
    
    NSLayoutConstraint.activate([
      linkedInIconImageView.topAnchor.constraint(equalTo: twitterIconImageView.bottomAnchor, constant: 8),
      linkedInIconImageView.leadingAnchor.constraint(equalTo: locationAndLinksView.leadingAnchor, constant: 10),
      linkedInIconImageView.heightAnchor.constraint(equalToConstant: 18),      linkedInIconImageView.widthAnchor.constraint(equalToConstant: 18),
    ])
  }
  
  func setUpLikesSection() {
    view.addSubview(likesSectionView)
    
    NSLayoutConstraint.activate([
      likesSectionView.topAnchor.constraint(equalTo: locationAndLinksView.bottomAnchor, constant: 10),
      likesSectionView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 40),
      likesSectionView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -40),
      likesSectionView.heightAnchor.constraint(equalToConstant: 60),
    ])
  }
  
  func setUpThingsILoveLabel() {
    likesSectionView.addSubview(thingsILoveLabel)
    
    NSLayoutConstraint.activate([
      thingsILoveLabel.topAnchor.constraint(equalTo: likesSectionView.topAnchor, constant: 10),
      thingsILoveLabel.leadingAnchor.constraint(equalTo: likesSectionView.leadingAnchor, constant: 10),
      thingsILoveLabel.trailingAnchor.constraint(equalTo: likesSectionView.trailingAnchor, constant: -10),
    ])
  }
  
  func setUpFavoriteFoodLabel() {
    likesSectionView.addSubview(favoriteFoodLabel)
    
    NSLayoutConstraint.activate([
      favoriteFoodLabel.topAnchor.constraint(equalTo: likesSectionView.topAnchor, constant: 35),
      favoriteFoodLabel.leadingAnchor.constraint(equalTo: likesSectionView.leadingAnchor, constant: 10),
      favoriteFoodLabel.trailingAnchor.constraint(equalTo: likesSectionView.trailingAnchor, constant: -10),
    ])
  }
  
  func setUpFavoriteMovieLabel() {
    likesSectionView.addSubview(favoriteMovieLabel)
    
    NSLayoutConstraint.activate([
      favoriteMovieLabel.topAnchor.constraint(equalTo: likesSectionView.topAnchor, constant: 35),
      favoriteMovieLabel.leadingAnchor.constraint(equalTo: favoriteFoodLabel.leadingAnchor, constant: 120),
      favoriteMovieLabel.trailingAnchor.constraint(equalTo: likesSectionView.trailingAnchor, constant: -10),
    ])
  }
  
  func setUpIntroToCodingSection() {
    view.addSubview(introToCodingSection)
    
    NSLayoutConstraint.activate([
      introToCodingSection.topAnchor.constraint(equalTo: likesSectionView.bottomAnchor, constant: 20),
      introToCodingSection.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 40),
      introToCodingSection.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -40),
      introToCodingSection.heightAnchor.constraint(equalToConstant: 140),
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


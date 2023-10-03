//
//  ViewController.swift
//  TabBarVCTest
//
//  Created by DA MAC M1 157 on 2023/10/03.
//

import UIKit

class HomeVC: UIViewController {
    
    let mainView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .red
        view.layer.cornerRadius = 20
        view.layer.shadowOffset = CGSize(width: 2, height: 5)
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOpacity = 0.8
        return view
    }()
    
    let profileImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "carringtonDA")
        image.contentMode = .scaleAspectFit
        image.layer.cornerRadius = 50
        image.clipsToBounds = true
        return image
    }()
    
    let textLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "When I wrote this code, only God and I understood what I did. Now only God knows."
        label.textColor = .white
        label.numberOfLines = 0
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    func setupUI() {
        view.backgroundColor = .yellow
        title = "Your Cards"
        view.addSubview(mainView)
        mainView.addSubview(profileImage)
        mainView.addSubview(textLabel)
        setupConstraints()
    }
    
    func setupConstraints() {
        
        let mainViewConstraints = [
            mainView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            mainView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            mainView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            mainView.heightAnchor.constraint(equalToConstant: 200)
        ]
        
        let profileImageConstraints = [
            profileImage.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 30),
            profileImage.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -30),
            profileImage.heightAnchor.constraint(equalToConstant: 100),
            profileImage.leadingAnchor.constraint(equalTo: textLabel.trailingAnchor, constant: 10)
        ]
        
        
        let textLabelConstraints = [
            textLabel.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 10),
            textLabel.centerYAnchor.constraint(equalTo: mainView.centerYAnchor)
        ]
        
        NSLayoutConstraint.activate(mainViewConstraints)
        NSLayoutConstraint.activate(profileImageConstraints)
        NSLayoutConstraint.activate(textLabelConstraints)
    }

}


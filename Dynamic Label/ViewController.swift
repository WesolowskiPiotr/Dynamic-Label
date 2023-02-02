//
//  ViewController.swift
//  Dynamic Label
//
//  Created by Piotr Wesołowski on 02/02/2023.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addLabel()
    }
    
    private func addLabel() {
        let dynamicLabel = UILabel()
        
        self.view.addSubview(dynamicLabel)
        dynamicLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([dynamicLabel.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 100),
                                     dynamicLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 30),
                                     dynamicLabel.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -30)])
        dynamicLabel.numberOfLines = 0
        dynamicLabel.backgroundColor = .gray
        dynamicLabel.text = """
            Bardzo długi teeeeeeeeext Bardzo długi teeeeeeeeext Bardzo długi teeeeeeeeext Bardzo długi teeeeeeeeext Bardzo długi teeeeeeeeext Bardzo długi teeeeeeeeext Bardzo długi teeeeeeeeext \
            Bardzo długi teeeeeeeeext Bardzo długi teeeeeeeeext Bardzo długi teeeeeeeeext Bardzo długi teeeeeeeeext Bardzo długi teeeeeeeeext Bardzo długi teeeeeeeeext Bardzo długi teeeeeeeeext
            """
    }
}


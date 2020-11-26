//
//  ViewController.swift
//  SimpleHTTPClient1
//
//  Created by ITLoaner on 10/6/20.
//  Copyright © 2020 ITLoaner. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var headingLabel: UILabel!
    var titleLabel: UILabel!
    var dateLabel: UILabel!
    var statusLabel: UILabel!
    var addButton = [UIButton]()
    var titleText: UITextField!
    var dateText: UITextField!
    var statusText: UITextField!

    
    override func viewDidLoad() {
        
        view = UIView()
        view.backgroundColor = .white
        
        headingLabel = UILabel()
        headingLabel.translatesAutoresizingMaskIntoConstraints = false
        headingLabel.textAlignment = .center
        headingLabel.text = "Please Enter Claim Information"
        headingLabel.font = UIFont.boldSystemFont(ofSize: 16.0)
        headingLabel.font = headingLabel.font.withSize(20)
        view.addSubview(headingLabel)
        
        titleLabel = UILabel()
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.textAlignment = .left
        titleLabel.text = "Claim Title"
        view.addSubview(titleLabel)
        
        dateLabel = UILabel()
        dateLabel.translatesAutoresizingMaskIntoConstraints = false
        dateLabel.textAlignment = .left
        dateLabel.text = "Date"
        view.addSubview(dateLabel)
        
        statusLabel = UILabel()
        statusLabel.translatesAutoresizingMaskIntoConstraints = false
        statusLabel.textAlignment = .left
        statusLabel.text = "Status:"
        view.addSubview(statusLabel)
        
        titleText = UITextField()
        titleText.translatesAutoresizingMaskIntoConstraints = false
        titleText.placeholder = "Add title here"
        titleText.textAlignment = .left
        titleText.isUserInteractionEnabled = false
        view.addSubview(titleText)
        
        dateText = UITextField()
        dateText.translatesAutoresizingMaskIntoConstraints = false
        dateText.placeholder = "DD/MM/YYYY"
        dateText.textAlignment = .left
        dateText.isUserInteractionEnabled = false
        view.addSubview(dateText)
        
        statusText = UITextField()
        statusText.translatesAutoresizingMaskIntoConstraints = false
        statusText.placeholder = "No status available"
        statusText.textAlignment = .left
        statusText.isUserInteractionEnabled = false
        view.addSubview(statusText)
        
        let add = UIButton(type: .system)
        add.translatesAutoresizingMaskIntoConstraints = false
        add.setTitle("Add", for: .normal)
        add.setTitleColor(UIColor.black, for: .normal)
        add.layer.borderWidth = 1
        add.layer.borderColor = UIColor.blue.cgColor
        view.addSubview(add)

        NSLayoutConstraint.activate([
            headingLabel.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 20),
            headingLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleLabel.topAnchor.constraint(equalTo: headingLabel.bottomAnchor, constant: 20),
            titleLabel.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            titleLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.2),
            dateLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20),
            dateLabel.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            dateLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.2),
            titleText.leadingAnchor.constraint(equalTo: titleLabel.trailingAnchor, constant: 20),
            titleText.topAnchor.constraint(equalTo: titleLabel.topAnchor),
            dateText.leadingAnchor.constraint(equalTo: titleLabel.trailingAnchor, constant: 20),
            dateText.topAnchor.constraint(equalTo: dateLabel.topAnchor),
            statusLabel.topAnchor.constraint(equalTo: add.bottomAnchor, constant: 20),
            statusLabel.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            statusLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.2),
            statusText.leadingAnchor.constraint(equalTo: statusLabel.trailingAnchor, constant: 20),
            statusText.topAnchor.constraint(equalTo: statusLabel.topAnchor),
            add.topAnchor.constraint(equalTo: dateText.bottomAnchor, constant: 20),
            add.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
            add.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.15),
        ])
        
        super.viewDidLoad()
        
//        // Do any additional setup after loading the view, typically from a nib.
//        // 1.Prepare the UI Screen
//        let vGenerator = PersonDetailSectionGenerator()
//        let sView = vGenerator.generate()
//        //
//        view.addSubview(sView)
//        //
//        let cViews = sView.arrangedSubviews
//        //vals = [UITextField]()
//        for sv in cViews {  // 3 of them
//            let innerStackView = sv as! UIStackView
//            for ve in innerStackView.arrangedSubviews { // 2 of them
//                if ve is UITextField {
//                    vals.append(ve as! UITextField)
//                }
//            }
//        }
//        //
//        for i in 0...vals.count-1 {
//            vals[i].translatesAutoresizingMaskIntoConstraints = false
//            let constr = vals[i].leadingAnchor.constraint(equalTo: vals[0].leadingAnchor)
//            constr.isActive = true
//        }
//        //
//        sView.translatesAutoresizingMaskIntoConstraints = false
//        let tCont = sView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor)
//        let lCont = sView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor)
//        let trCont = sView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor)
//        tCont.isActive = true
//        lCont.isActive = true
//        trCont.isActive = true
//
//        // 2. Retrieve data
//        let pService = PersonService(vc : self)
//        // Testing getAll() method
//        pService.getAll()

    }


}


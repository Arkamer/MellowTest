//
//  ViewController.swift
//  App teste
//
//  Created by Aluno on 12/04/18.
//  Copyright © 2018 Ailton Lessa. All rights reserved.
//

import UIKit

/*
 enum Droga {
    case maconha
    case alcool
    case LSD
    case quetamina
    case cocaina
    case cigarro
}
*/
let drogas = ["Maconha", "Alcool", "LSD", "Quetamina", "Cocaína", "Cigarro"]

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return drogas.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let ItemCell: UICollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "Item", for: indexPath)
        ItemCell.layer.cornerRadius = 50
        
        return ItemCell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        PopUp.isHidden = false

        self.view.bringSubview(toFront: PopUp)
        
    }
    
    @IBOutlet weak var PopUp: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        PopUp.isHidden = true
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

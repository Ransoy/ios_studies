//
//  ViewController.swift
//  TodoAppCollection
//
//  Created by FDC Yongbo on 21/03/2018.
//  Copyright © 2018 Ross. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    let listprofile = ["news","profile","scrotum","pops","icecream","inner fluid","fakenews","a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController:  UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return listprofile.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "customCell", for: indexPath) as! CustomCollectionViewCell
        cell.imageCell.image = UIImage(named: listprofile[indexPath.row])
        cell.lblCell.text = listprofile[indexPath.row].capitalized
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        var bounds = UIScreen.main.bounds
        let width = bounds.size.width
        return CGSize(width: width, height: 150)
    }
  
    
}

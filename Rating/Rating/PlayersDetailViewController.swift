//
//  PlayersDetailViewController.swift
//  Rating
//
//  Created by FDC Yongbo on 19/03/2018.
//  Copyright © 2018 FDC Yongbo. All rights reserved.
//

import UIKit

class PlayersDetailViewController: UITableViewController {
    
    var player: Player?
 
    @IBAction func cancelToPlayerViewController(_ segue: UIStoryboardSegue){
        
    }
    
    @IBAction func savePlayerDetail(_ segue: UIStoryboardSegue){
        
    }
    
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var detailabel: UILabel!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SavePlayerDetail" ,
            let playerName = nameTextField.text{
            player = Player(name: playerName, game: "chess", rating:1)
        }
        
        if segue.identifier == "PickName",
            let gamePickerViewController = segue.destination as? GamePickerViewController {
                 gamePickerViewController.selectedGame = game
        }
    }
    
    var game: String = "Chess" {
        didSet {
            detailabel.text = game
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension PlayersDetailViewController {
    @IBAction func unwindWithSelectedGame (segue: UIStoryboardSegue) {
        if let gamePickerViewController = segue.source as? GamePickerViewController,
            let selectedGame = gamePickerViewController.selectedGame {
             game = selectedGame
        }
    }
}

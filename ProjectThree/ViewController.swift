//
//  ViewController.swift
//  ProjectThree
//
//  Created by CM Student on 4/9/18.
//  Copyright © 2018 CM Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
let restaurantsNamesArray = ["Sushi Bay", "Kazoku", "Genki Sushi", "Gyu Kaku", "DB Grill", "Aloha Salads"]
    
    @IBOutlet var eatsTabLabel: UILabel!
    
    @IBOutlet var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.navigationItem.title = "Eats"
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantsNamesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier:"cellReuseIdentifier")
        let text = restaurantsNamesArray[indexPath.row]
        cell.textLabel?.text = text
        return cell
        
        
    }
    
}


//
//  CharactersTableViewController.swift
//  Star Wars
//
//  Created by Justin Carver on 9/1/16.
//  Copyright © 2016 Justin Carver. All rights reserved.
//

import UIKit

class CharactersTableViewController: UITableViewController {
    
    let characters: [Character] = []

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("CharacterCell", forIndexPath: indexPath)

        let character = characters[indexPath.row]
        cell.textLabel?.text = character.name

        return cell
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

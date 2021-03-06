//
//  GroupTableViewController.swift
//  438messaging
//
//  Created by Zachary Perlman on 11/30/18.
//  Copyright © 2018 Zachary Perlman. All rights reserved.
//

import UIKit

class GroupsTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    @IBOutlet var groupTableView: UITableView!
    var username:String? = "Test User"
    
    //let viewController = UIApplication.shared.windows[0].rootViewController?.childViewControllers[1] as? TabBarViewController
   // username = viewController?.username
    
    override func viewDidLoad() {
        super.viewDidLoad()
        groupTableView.delegate = self
        groupTableView.dataSource = self
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        self.navigationItem.rightBarButtonItem = self.editButtonItem
        username = GlobalVariables.globalUsername
    }
    
 
    
    
    var postData = [String]()
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    func numberOfSectionsinTableView(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 1
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "groupCell")
       
        // set cell's textLabel.text property
        cell?.textLabel?.text = "Test Group"
        
        return cell!
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "group" {
            let vc = segue.destination as? MessageViewController
            
            vc?.groupName = "Test Group"
            vc?.currentName = username

        }
    }
    

}

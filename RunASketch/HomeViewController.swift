//
//  NewMapViewController.swift
//  RunASketch
//
//  Created by Mackenzie Wacker on 12/12/16.
//  Copyright © 2016 Dustin Lee. All rights reserved.
//

import UIKit

class HomeViewController: UITableViewController, UINavigationControllerDelegate, CancelButtonDelegate {
    //:::::::::::::::::::::::::::
//    var sketches = [Sketch]()
    //::::::::::::::::::::::::::::
    
    func cancelButtonPressedFrom(controller: UIViewController) {
        print("back to home vc")
        dismiss(animated: true, completion: nil)
//        tableView.reloadData()
    }

    ///////////////////////////////////////
    // MARK: - SEGUES
    ///////////////////////////////////////
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("hello")
        if segue.identifier == "newMapSegue" {
            let navigationController = segue.destination as! UINavigationController
            let controller = navigationController.topViewController as! NewMapViewController
        
            controller.cancelButtonDelegate = self
            controller.delegate = self

        }
//        else if segue.identifier == "showMomentSegue" {
//            // From TableViewController to ShowMomentViewController
//            let navigationController = segue.destinationViewController as! UINavigationController
//            let controller = navigationController.topViewController as! ShowMomentViewController
//            controller.cancelButtonDelegate = self
//            controller.delegate = self
//            if let indexPath = tableView.indexPathForCell(sender as! UITableViewCell) {
//                controller.moment = moments[indexPath.row]
//            }
//        }
    }
    
    //:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
    //      MARK: - Required Methods:
//    
//    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
//        
//        let cell = tableView.dequeueReusableCellWithIdentifier("MyCell")!
//        //        cell.textLabel?.text = sketches[indexPath.row].details
//        return cell
//    }
//    
//    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return sketches.count
//    }
    ///:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
}


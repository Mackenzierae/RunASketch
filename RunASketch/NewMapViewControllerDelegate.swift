//
//  NewMapViewControllerDelegate.swift
//  RunASketch
//
//  Created by Mackenzie Wacker on 12/12/16.
//  Copyright © 2016 Dustin Lee. All rights reserved.
//

import Foundation
protocol NewMapViewControllerDelegate: class {
    
    func newMapViewController(controller: NewMapViewController, didFinishAddingMap moment: String)

}

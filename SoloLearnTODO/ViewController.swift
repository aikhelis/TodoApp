//
//  ViewController.swift
//  SoloLearnTODO
//
//  Created by Aliaksandr Ikhelis on 20/07/2018.
//  Copyright © 2018 Aliaksandr Ikhelis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var itemDesc: UITextField!
    @IBOutlet weak var saveButton: UIBarButtonItem!
    @IBOutlet weak var cancelButton: UIBarButtonItem!
    
    @IBAction func cancel(_ sender: UIBarButtonItem) {
        let isInAddMode = presentingViewController is UINavigationController
        
        if isInAddMode {
            dismiss(animated: true, completion: nil)
        } else {
            navigationController!.popViewController(animated: true)
        }
    }
    
    var item: Item?
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if sender as AnyObject? === saveButton {
            let newName = itemDesc.text ?? ""
            item = Item(name: newName)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let item = item {
            itemDesc.text = item.name
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


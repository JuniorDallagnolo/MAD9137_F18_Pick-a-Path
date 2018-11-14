//
//  ViewController3.swift
//  MAD9137_F18_Pick-a-Path
//
//  Created by Ernilo Dallagnolo Junior on 2018-11-02.
//  Copyright © 2018 Ernilo Dallaagnolo Junior. All rights reserved.
//

import UIKit

class ViewController3: UIViewController {
    
    @IBOutlet weak var pageTextView: UITextView!
    @IBOutlet weak var navItem: UINavigationItem!
    @IBOutlet weak var imgView: UIImageView!
    
    var currentPage: Page?
    
    // The button action within the 3rd view must call the popToRootViewController function to return to the first view.
    @IBAction func restartButton(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        // 3pt - display the current pageNumber value in the navItem's title for each view
        navItem.title = "Page \(currentPage!.pageNumber!)"
        // 3pt - display the pageText in the textView for each view
        pageTextView.text = currentPage!.pageText
        imgView.image = UIImage(named: (currentPage?.image)!)
    }
    
}

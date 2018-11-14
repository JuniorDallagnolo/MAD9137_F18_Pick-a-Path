//
//  ViewController2.swift
//  MAD9137_F18_Pick-a-Path
//
//  Created by Ernilo Dallagnolo Junior on 2018-11-02.
//  Copyright © 2018 Ernilo Dallaagnolo Junior. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    
    @IBOutlet weak var pageTextView: UITextView!
    @IBOutlet weak var navItem: UINavigationItem!
    @IBOutlet weak var navButtonChoiceA: UIBarButtonItem!
    @IBOutlet weak var navButtonChoiceB: UIBarButtonItem!
    @IBOutlet weak var imgView: UIImageView!
    
    var currentPage: Page?
    
    // 8pt - call the appropriate segue, and pass the correct 'sender' value within the performSegue function in each button action
    @IBAction func navButtonActionA(_ sender: Any) {
        performSegue(withIdentifier: "showPageC", sender: "buttonA")
    }
    @IBAction func navButtonActionB(_ sender: Any) {
        performSegue(withIdentifier: "showPageC", sender: "buttonB")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        // 3pt - display the current pageNumber value in the navItem's title for each view
        navItem.title = "Page \(currentPage!.pageNumber!)"
        // 4pt - display the pageNumber for the pageChoiceA and pageChoiceB in the barButtonItem's title text
        navButtonChoiceA.title = "Page \(currentPage!.pageChoiceA!.pageNumber!)"
        navButtonChoiceB.title = "Page \(currentPage!.pageChoiceB!.pageNumber!)"
        // 3pt - display the pageText in the textView for each view
        pageTextView.text = currentPage!.pageText
        imgView.image = UIImage(named: (currentPage?.image)!)
    }
    
    // 4pt - check which button was pressed and pass the correct Page object to the next view within the prepare function in the 1st and 2nd view
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nextView = segue.destination as! ViewController3
        if sender as! String == "buttonA" {
            nextView.currentPage = currentPage?.pageChoiceA
        } else if sender as! String == "buttonB" {
            nextView.currentPage = self.currentPage?.pageChoiceB
        }
    }
    
}

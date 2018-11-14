//
//  ViewController.swift
//  MAD9137_F18_Pick-a-Path
//
//  Created by Ernilo Dallagnolo Junior on 2018-11-01.
//  Copyright © 2018 Ernilo Dallaagnolo Junior. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //In the first viewController, make an A/B tree structure using Page objects that hold your story.
    
    @IBOutlet weak var pageTextView: UITextView!
    @IBOutlet weak var navItem: UINavigationItem!
    @IBOutlet weak var navButtonChoiceA: UIBarButtonItem!
    @IBOutlet weak var navButtonChoiceB: UIBarButtonItem!
    @IBOutlet weak var imgView: UIImageView!
    
    var page1: Page?
    var page2: Page?
    var page3: Page?
    var page4: Page?
    var page5: Page?
    var page6: Page?
    var page7: Page?
    
    var currentPage: Page?
    
    // 4pt - connect the three views with 2 'push' type segues, and give the segues identifier names
    // 8pt - call the appropriate segue, and pass the correct 'sender' value within the performSegue function in each button action
    @IBAction func navButtonActionA(_ sender: Any) {
        performSegue(withIdentifier: "showPageB", sender: "buttonA")
    }
    @IBAction func navButtonActionB(_ sender: Any) {
        performSegue(withIdentifier: "showPageB", sender: "buttonB")
    }
    
    // 4pt - check which button was pressed and pass the correct Page object to the next view within the prepare function in the 1st and 2nd view
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nextView = segue.destination as! ViewController2
        if sender as! String == "buttonA" {
            nextView.currentPage = currentPage?.pageChoiceA
        } else if sender as! String == "buttonB" {
            nextView.currentPage = self.currentPage?.pageChoiceB
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //7pt - set page numbers and text for 7 Page objects
        page1 = Page(   pageNumber: 1,
                        pageText: "             Lost your phone Adventure \n Page 2: Try to Remember where you used it Last \n Page 3: Have your main dude Derek give it a Call",
                        image: "image1.jpg")
        page2 = Page(   pageNumber: 2,
                        pageText: " Page 4: I was arguing with my dad and dropped a fat beefer in the bathroom \n Page 5: I was reading a list of top ten must-munch quesadillas from my bed ",
                        image: "image2.jpg")
        page3 = Page(   pageNumber: 3,
                        pageText: "Page 6: Acusse Derek of Stealing your phone. \nPage 7: Trust Derek. He is your main dude.\n\n Oh yeah, your main dude Derek is here! In your shock at losing your phone, you totally forgot. You honestly don't rembmer how long you've been ignoring Derek, but he forgives you, thats what main dudes are for.",
                        image: "image3.jpg")
        page4 = Page(   pageNumber: 4,
                        pageText: " That's right. you were having an argument with your stupid dad about wheter or not it's ok to talk on the phone while beefin' it so right. He was of the opinion that it's gross and disrespectful, and you \"politely disagreed\" \n In a blind fury, you spiked your phone into the toilet bowl and flushed it repeatedly while screaming something about baby boomers that only kind of made sense. \n So I guess that's where it is.",
                        image: "image4.jpg")
        page5 = Page(   pageNumber: 5,
                        pageText: " Oh yeah, you were cuddled up in your sheets reading that amazing list of must-much quesadillas. Shit, now you really need to find your phone or esle all those 'dillas are going to go unmunched, and that is one thing you cannot abide. \n As you investigate the myriad folds and creases in your unmade bed, you slowly start to lose steam. Searching for things is really hard work, and your bed is really, really comfortable. Without realizing it, you pass out. \n Some time later, you snap awake and sit bolt-upright in bed, covered in seat and lookjing on your nightstand, you find your phone right there where you left it! \n It was all a dream! A terrible, terrible dream.",
                        image: "image4.jpg")
        page6 = Page(   pageNumber: 6,
                        pageText: "You will have to live without friends and phones forever...",
                        image: "image6.jpg")
        page7 = Page(   pageNumber: 7,
                        pageText: "Friends are everything in life, eh!?",
                        image: "image7.jpg")
        
        // 3pt - set links between Pages objects to connect
        page1?.pageChoiceA = page2
        page1?.pageChoiceB = page3
        
        page2?.pageChoiceA = page4
        page2?.pageChoiceB = page5
        
        page3?.pageChoiceA = page6
        page3?.pageChoiceB = page7
        
        // set the current page
        currentPage = page1
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        // 3pt - display the current pageNumber value in the navItem's title for each view
        navItem.title = "Page \(currentPage!.pageNumber!)"
        
        // 4pt - display the pageNumber for the pageChoiceA and pageChoiceB in the barButtonItem's title text
        navButtonChoiceA.title = "Page \(currentPage!.pageChoiceA!.pageNumber!)"
        navButtonChoiceB.title = "Page \(currentPage!.pageChoiceB!.pageNumber!)"
        
        imgView.image = UIImage(named: (currentPage?.image)!)
        
        // 3pt - display the pageText in the textView for each view
        pageTextView.text = currentPage!.pageText
    }
    
}


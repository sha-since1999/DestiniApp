//
//  ViewController.swift

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
   
    var storiesbrain = StoryBrain()

    override func viewDidLoad() {
        super.viewDidLoad()
        UIUpdate()
        

    }

    @IBAction func choicePressed(_ sender: UIButton) {
        
        storiesbrain.nextStory(sender.currentTitle!)
        UIUpdate()
    }
     func UIUpdate()
     {
        storyLabel.text = storiesbrain.getStoryTitle()
        choice1Button.setTitle(storiesbrain.getChoice1() , for:  .normal)
        choice2Button.setTitle(storiesbrain.getChoice2() , for:  .normal)
    }
    
}


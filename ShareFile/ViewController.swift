//
//  ViewController.swift
//  ShareFile
//
//  Created by LOKESH on 30/05/24.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func shareBtn(_ sender: Any)
    {
        let url = URL(string: "https://mocki.io/v1/25d4762f-ceac-49d1-9849-865492a006c1")
        let text = "You are getting this mail from App created by ShareFile"
        let share: [Any] = [text, url!]
        

        let activityViewController = UIActivityViewController(activityItems: share, applicationActivities: nil)
    
        activityViewController.excludedActivityTypes = [
            .postToFacebook,
            .postToTwitter,
            .print,
            .postToVimeo,
            .postToTencentWeibo,
            .postToWeibo,
            .copyToPasteboard,
            .airDrop
        ]
        present(activityViewController, animated: true, completion: nil)
    }
    
}
    


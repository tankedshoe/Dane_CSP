//
//  ImpactViewController.swift
//  Dane_CSP
//
//  Created by Heaps, Dane on 10/26/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit

class ImpactViewController: UIViewController {

    @IBOutlet weak var sketch: UIImageView!
    @IBOutlet weak var personalConnection: UILabel!
    
    var text: String = "I think its unfair that women are treated unequally, so creating awareness for this global problem is something I very much want to do."
    
    private func setStuff() -> Void
    {
        sketch.image = UIImage(named: "sketchImage")
        personalConnection.text = text
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

//
//  AlgorithmsViewController.swift
//  Dane_CSP
//
//  Created by Heaps, Dane on 10/26/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit

class AlgorithmsViewController: UIViewController {

    // MARK: Data members
    @IBOutlet weak var algorithmText: UILabel!
    
    
    private func setupAlgorithm() -> Void
    {
        var algorithmSteps : [String] = []
        
        //TODO: Define algorithm and all steps
        let algorithm :String = "These are the steps to making a Java Project: \n"
        let sOne :String = "Open Eclipse, choose your workspace."
        let sTwo :String = "Create a new Java Project, name it."
        let sThree :String = "Inside the src folder, create four new packages: 1. xxxx.controller 2. xxxx.model 3. xxxx.tests 4. xxxx.view"
        let sFour :String = "Inside the controller package, create two classes: 1. XxxxController 2. XxxxRunner"
        let sFive :String = "Inside the Runner class, create a method that starts the method."
        let sSix :String = "Inside the Controller class, call that method and tell it what to do."
        let sSeven :String = "Create a repository for the project in Github, make the gitignore file, write a better inital commit message, and do your first commit. Push to origin."
        let sEight :String = "Every major change/save to your Java project, commit to Github and push to origin."
        
        //TODO: Finish adding all the steps to the algorithm
        algorithmSteps = [sOne, sTwo, sThree, sFour, sFive, sSix, sSeven, sEight]
        
        let attributesDictionary = [NSAttributedStringKey.font : algorithmText.font]
        let fullAttributedString = NSMutableAttributedString(string: algorithm, attributes: attributesDictionary)
        
        //For in loop giving the array a paragraph style when displayed.
        for step in algorithmSteps
        {
            let bullet :String = "-"
            let formattedStep :String = "\n\(bullet) \(step)"
            let attributedStringStep : NSMutableAttributedString = NSMutableAttributedString(string: formattedStep)
            let paragraphStyle = createParagraphStyle()
            
            attributedStringStep.addAttributes([NSAttributedStringKey.paragraphStyle : paragraphStyle], range: NSMakeRange(0, attributedStringStep.length))
            fullAttributedString.append(attributedStringStep)
        }
        
        algorithmText.attributedText = fullAttributedString
    }
    
    private func createParagraphStyle() -> NSParagraphStyle
    {
        //Giving the paragraph indent and style.
        let paragraphStyle: NSMutableParagraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = .left
        paragraphStyle.defaultTabInterval = 15
        paragraphStyle.firstLineHeadIndent = 20
        paragraphStyle.headIndent = 35
        
        return paragraphStyle
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupAlgorithm()

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

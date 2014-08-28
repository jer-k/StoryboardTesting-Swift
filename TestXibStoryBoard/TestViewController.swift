//
//  TestViewController.swift
//  TestXibStoryBoard
//
//  Created by Jeremy Kreutzbender on 8/27/14.
//
//

import UIKit

//Xcode 6 Beta 6
//NOTE: Solution 1
@objc(TestViewController) class TestViewController: UIViewController {

    
    /* NOTE: Solution 2
    required init(coder aDecoder: NSCoder) {
        super.init(nibName: "TestViewController", bundle: NSBundle.mainBundle())
    }
    */
    
    //NOTE: Solution 3
    //Name the xib module.viewcontroller.xib -> TestXibStoryBoard.TestViewController.xib
    
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
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

//
//  DetailViewController.swift
//  123
//
//  Created by Khaled Habbal on 2017-12-14.
//  Copyright © 2017 Khaled Habbal. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var myTitle: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = myTitle
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

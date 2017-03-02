//
//  DataViewController.swift
//  yukoga.gaswift.sample1
//
//  Created by Yutaka Koga on 2017/02/08.
//  Copyright © 2017 yukoga. All rights reserved.
//

import UIKit

class DataViewController: UIViewController {

    @IBOutlet weak var dataLabel: UILabel!
    var dataObject: String = ""


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        guard let tracker = GAI.sharedInstance().defaultTracker else { return }
        tracker.set(kGAIScreenName, value: "DataViewController")
        guard let builder = GAIDictionaryBuilder.createScreenView() else { return }
        tracker.send(builder.build() as [NSObject : AnyObject])
        self.dataLabel!.text = dataObject
    }


}


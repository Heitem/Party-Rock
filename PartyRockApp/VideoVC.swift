//
//  VideoVC.swift
//  PartyRockApp
//
//  Created by Heitem OULED-LAGHRIYEB on 9/7/17.
//  Copyright © 2017 Heitem OULED-LAGHRIYEB. All rights reserved.
//

import UIKit

class VideoVC: UIViewController {
    
    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var titleLbl: UILabel!
    private var _partyRock: PartyRock!
    
    var partyRock: PartyRock {
        get {
            return _partyRock
        }
        set {
            _partyRock = newValue
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLbl.text = partyRock.videoTitle
        webView.loadHTMLString(partyRock.videoUrl, baseURL: nil)
    }
}

//
//  PlayingViewController.swift
//  music-service
//
//  Created by Giovani Nícolas Bettoni on 22/06/21.
//

import UIKit

class PlayingViewController: UIViewController {
    
    
    @IBOutlet weak var button: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        button.imageView?.contentMode = .scaleAspectFit
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

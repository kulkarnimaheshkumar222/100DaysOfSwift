//
//  DetailViewController.swift
//  Project1-StormViewer
//
//  Created by Mahesh Kulkarni on 14/11/23.
//

import UIKit

class DetailViewController: UIViewController {

    
    @IBOutlet weak var imageView: UIImageView!
    var selectedImg = ""
    var indexDetailStr = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        imageView.image = UIImage(named: selectedImg)
        self.title = indexDetailStr
        navigationItem.largeTitleDisplayMode = .never
    }

}

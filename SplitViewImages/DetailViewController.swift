//
//  DetailViewController.swift
//  SplitViewImages
//
//  Created by dohien on 6/23/18.
//  Copyright © 2018 hiền hihi. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController , UIScrollViewDelegate{

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imageView: UIImageView!
    func configureView() {
        // Update the user interface for the detail item.
        if let detail = detailItem {
            if let photoImage = imageView {
                photoImage.image = UIImage(named: detail)
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imageView
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var detailItem: String? {
        didSet {
            // Update the view.
            configureView()
        }
    }


}


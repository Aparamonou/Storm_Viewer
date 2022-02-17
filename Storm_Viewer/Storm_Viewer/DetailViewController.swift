//
//  DetailViewController.swift
//  ProjectOne
//
//  Created by Alex Paramonov on 16.02.22.
//

import UIKit

class DetailViewController: UIViewController {

     @IBOutlet weak var imageView: UIImageView!
     var selectedImage: String?
     var selectedPictureNumber = 0
     var totalPictures = 0
     
     
     override func viewDidLoad() {
        super.viewDidLoad()
          
          title = "Number picture-\(selectedPictureNumber), Total pictures-\(totalPictures)"
          navigationItem.largeTitleDisplayMode = .never
          
          guard let imageToLoad = selectedImage else { return }
          imageView.image = UIImage(named: imageToLoad)
    }
     
     override func viewWillAppear(_ animated: Bool) {
          super.viewWillAppear(animated)
          navigationController?.hidesBarsOnTap = true
     }
     
     override func viewWillDisappear(_ animated: Bool) {
          super.viewWillDisappear(animated)
          navigationController?.hidesBarsOnTap = false
     }
}

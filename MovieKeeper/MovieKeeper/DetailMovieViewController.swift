//
//  DetailMovieViewController.swift
//  MovieKeeper
//
//  Created by Stanislav Cherkasov on 24.04.2018.
//  Copyright © 2018 Stanislav Cherkasov. All rights reserved.
//

import UIKit

class DetailMovieViewController: UIViewController {

    @IBOutlet weak var imageDetail: UIImageView!
    
    var imageDetailName = ""
    var titleDetail = ""
    var genreDetail = ""
    var yearDetail = ""
    var descriptionDetale = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageDetail.image = UIImage(named: imageDetailName)
    
        
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

//
//  ColorsDetailViewController.swift
//  ColorsApp
//
//  Created by user on 28/02/2023.
//

import UIKit

class ColorsDetailViewController: UIViewController {
    var color:UIColor?
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = color ?? .red
        // Do any additional setup after loading the view.
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

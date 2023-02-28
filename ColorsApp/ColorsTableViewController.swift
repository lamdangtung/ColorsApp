//
//  ColorsTableViewController.swift
//  ColorsApp
//
//  Created by user on 28/02/2023.
//

import UIKit

class ColorsTableViewController: UIViewController  {
    
    var colors:[UIColor] = []
    
    enum Cells{
        static let colorCell = "ColorCell"
        
    }
    
    enum Segues{
        static let goToColoDetail = "goToColorsDetailViewController"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createRandomColors()
    }
    
    func createRandomColors(){
        for _ in 0..<50{
            colors.append(UIColor.randomColor())
        }
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationViewModel = segue.destination as! ColorsDetailViewController
        destinationViewModel.color = sender as? UIColor
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

extension ColorsTableViewController:UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Cells.colorCell) else{
            return UITableViewCell()
        }
        cell.backgroundColor = colors[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let color = colors[indexPath.row]
        performSegue(withIdentifier: Segues.goToColoDetail, sender: color)
    }
}

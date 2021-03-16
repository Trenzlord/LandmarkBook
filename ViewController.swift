//
//  ViewController.swift
//  LandmarkBook
//
//  Created by Mert Kaan on 15.03.2021.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    var landmarkNames = [String] ()
    var landmarkImages = [UIImage]()
    var chosenlandmarkImages = UIImage()
    var chosenLandmarkNames = ""
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        navigationItem.title = "Landmark Book"
        
       
        
        landmarkNames.append("Colosseum")
        landmarkNames.append("Great Wall")
        landmarkNames.append("Kremlin")
        landmarkNames.append("Stonehenge")
        landmarkNames.append("Tac Mahal")
        
        landmarkImages.append(UIImage(named: "colles.jpeg")!)
        landmarkImages.append(UIImage(named: "china.jpeg")!)
        landmarkImages.append(UIImage(named: "kremlin.jpeg")!)
        landmarkImages.append(UIImage(named: "stonehange.jpeg")!)
        landmarkImages.append(UIImage(named: "tacmahal.jpeg")!)
        
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            landmarkNames.remove(at: indexPath.row)
            landmarkImages.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
            
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = landmarkNames[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return landmarkNames.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
       chosenLandmarkNames = landmarkNames[indexPath.row]
       chosenlandmarkImages = landmarkImages[indexPath.row]
        
        performSegue(withIdentifier: "toImageviewController", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toImageviewController" {
            let destinationviewController = segue.destination as! viewController2
            destinationviewController.selectedLandMarkName = chosenLandmarkNames
            destinationviewController.SelectedLandmarkImage =  chosenlandmarkImages
            
        }
    }

}


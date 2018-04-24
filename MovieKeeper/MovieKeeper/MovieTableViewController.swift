//
//  MovieTableViewController.swift
//  MovieKeeper
//
//  Created by Stanislav Cherkasov on 24.04.2018.
//  Copyright © 2018 Stanislav Cherkasov. All rights reserved.
//

import UIKit

class MovieTableViewController: UITableViewController {
    
    var movie: [Movie] = [
        Movie(imagePoster: "forsage", title: "The fate of the furious", genre: "Action, Crime, Thriller", year: "2017", description: "Now that Dom and Letty are on their honeymoon and Brian and Mia have retired from the game-and the rest of the crew has been exonerated-the globetrotting team has found a semblance of a normal life. But when a mysterious woman seduces Dom into the world of crime he can't seem to escape and a betrayal of those closest to him, they will face trials that will test them as never before. From the shores of Cuba and the streets of New York City to the icy plains off the arctic Barents Sea, the elite force will crisscross the globe to stop an anarchist from unleashing chaos on the world's stage... and to bring home the man who made them a family."),
        Movie(imagePoster: "kingsman", title: "Kingsman: the secret service", genre: "Adventure", year: "2014", description: "A young man named Eggsy whose father died when he was a young boy, is dealing with living with the creep his mother is with now, who mistreats her and him. He goes out and does something to one of the creep's friends. He gets arrested and he calls a number a man gave him around the time his father died, to call if he needs help. A man named Harry approaches him and tells him he's the one who helped him. He tells him that he knew his father. When the man Eggsy slighted wants some payback, Harry takes care of him and his companions single handed. Harry then tells Eggsy that he's part of a secret organization called the Kingsman and his father was also part of it. He died trying to make the world safe. Harry offers Eggsy the opportunity to be a Kingsman and he takes it. He undergoes a grueling training course. Harry is looking into the demise of another Kingsman and the trail leads him to tech billionaire named Valentine aka V who is also curious about the group following him, the ..."),
        Movie(imagePoster: "avatar", title: "Avatar", genre: "Fantasy", year: "2009", description: "When his brother is killed in a robbery, paraplegic Marine Jake Sully decides to take his place in a mission on the distant world of Pandora. There he learns of greedy corporate figurehead Parker Selfridge's intentions of driving off the native humanoid Na'vi in order to mine for the precious material scattered throughout their rich woodland. In exchange for the spinal surgery that will fix his legs, Jake gathers intel for the cooperating military unit spearheaded by gung-ho Colonel Quaritch, while simultaneously attempting to infiltrate the Na'vi people with the use of an avatar identity. While Jake begins to bond with the native tribe and quickly falls in love with the beautiful alien Neytiri, the restless Colonel moves forward with his ruthless extermination tactics, forcing the soldier to take a stand - and fight back in an epic battle for the fate of Pandora.")]

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return movie.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "movieCell", for: indexPath) as! MovieTableViewCell

        cell.posterImage.image = UIImage(named: movie[indexPath.row].imagePoster)
        cell.titleLabel.text = movie[indexPath.row].title
        cell.genreLabel.text = movie[indexPath.row].genre
        cell.yearLabel.text = movie[indexPath.row].year
        cell.descriptionTextView.text = movie[indexPath.row].description

        return cell
    }
    
    override func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        
        let delete = UITableViewRowAction(style: .default, title: "Delete") { (action, indexPath) in
            self.movie.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
        
        delete.backgroundColor = UIColor.black
        
        return [delete]
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detailSegue" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let destinationViewController = segue.destination as! DetailMovieViewController
                destinationViewController.imageDetailName = self.movie[indexPath.row].imagePoster
                destinationViewController.titleDetail = self.movie[indexPath.row].title
            }
        }
    }
    
}

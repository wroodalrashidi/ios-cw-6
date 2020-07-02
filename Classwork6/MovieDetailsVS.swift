//
//  MovieDetailsVS.swift
//  Classwork6
//
//  Created by Wrood Alrashidi on 02/07/2020.
//  Copyright © 2020 Hasan Alsaffar. All rights reserved.
//

import UIKit

class MovieDetailsVS: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setMovieDetails()
        configuredUI()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var movieImg: UIImageView!
    @IBOutlet weak var movieName: UINavigationItem!
    @IBOutlet weak var movieRating: UILabel!
    @IBOutlet weak var movieRated: UILabel!
    @IBOutlet weak var movieReleaseDate: UILabel!
    @IBOutlet weak var actorImg: UIImageView!
    @IBOutlet weak var actorName: UILabel!
    @IBOutlet weak var actorImg2: UIImageView!
    @IBOutlet weak var actorName2: UILabel!
    @IBOutlet weak var actorName3: UILabel!
    @IBOutlet weak var actorImg3: UIImageView!
   
    
    @IBOutlet weak var ratingBG: UIView!
    @IBOutlet weak var ratedBG: UIView!
    @IBOutlet weak var yearBG: UIView!
    
    
    var moviesData : Movie = Movie(movieName: "Joker", movieReleaseDate: 2000, actors: [""], rating: 10.0, pgRating: "PG-13")
    
    func setMovieDetails(){
        movieName.title = moviesData.movieName
        self.movieImg.image = UIImage(named: moviesData.movieName)
        self.movieRated.text = moviesData.pgRating
        self.movieRating.text = String(moviesData.rating)
        self.movieReleaseDate.text = String(moviesData.movieReleaseDate)
        self.actorImg.image = UIImage(named: moviesData.actors[0])
        self.actorName.text = moviesData.actors[0]
        self.actorImg2.image = UIImage(named: moviesData.actors[1])
        self.actorName2.text = moviesData.actors[1]
        self.actorImg3.image = UIImage(named: moviesData.actors[2])
        self.actorName3.text = moviesData.actors[2]
    }
    
    func configuredUI() {
        ratedBG.layer.cornerRadius = 20
        ratingBG.layer.cornerRadius = 20
        yearBG.layer.cornerRadius = 20

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

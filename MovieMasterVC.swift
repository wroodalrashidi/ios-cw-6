//
//  MovieMasterVC.swift
//  Classwork6
//
//  Created by Wrood Alrashidi on 01/07/2020.
//  Copyright © 2020 Hasan Alsaffar. All rights reserved.
//

import UIKit

class MovieMasterVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setDCImage()
        setMarvelImage()
       

        // Do any additional setup after loading the view.
    }
    
    var marvelimage = MarvelMovieData
    var dcimage = DCMovieData
    var selectedMovie = Movie(movieName: "none", movieReleaseDate: 2000, actors: [], rating: 0.0, pgRating: "PG" )
    
   
    

    @IBOutlet weak var marvelImg0: UIButton!
    @IBOutlet weak var marvelImg1: UIButton!
    @IBOutlet weak var marvelImg2: UIButton!
    @IBOutlet weak var marvelImg3: UIButton!
    @IBOutlet weak var marvelImg4: UIButton!
    @IBOutlet weak var marvelImg5: UIButton!
    
    @IBOutlet weak var dcImg0: UIButton!
    @IBOutlet weak var dcImg1: UIButton!
    @IBOutlet weak var dcImg2: UIButton!
    @IBOutlet weak var dcImg3: UIButton!
    @IBOutlet weak var dcImg4: UIButton!
    @IBOutlet weak var dcImg5: UIButton!
    
    
    func setMarvelImage() {
        marvelImg0.setBackgroundImage(UIImage(named: MarvelMovieData[0].movieName), for: .normal)
        marvelImg1.setBackgroundImage(UIImage(named: MarvelMovieData[1].movieName), for: .normal)
        marvelImg2.setBackgroundImage(UIImage(named: MarvelMovieData[2].movieName), for: .normal)
        marvelImg3.setBackgroundImage(UIImage(named: MarvelMovieData[3].movieName), for: .normal)
        marvelImg4.setBackgroundImage(UIImage(named: MarvelMovieData[4].movieName), for: .normal)
        marvelImg5.setBackgroundImage(UIImage(named: MarvelMovieData[5].movieName), for: .normal)

    }
    
    func setDCImage() {
        dcImg0.setBackgroundImage(UIImage(named: DCMovieData[0].movieName), for: .normal)
        dcImg1.setBackgroundImage(UIImage(named: DCMovieData[1].movieName), for: .normal)
        dcImg2.setBackgroundImage(UIImage(named: DCMovieData[2].movieName), for: .normal)
        dcImg3.setBackgroundImage(UIImage(named: DCMovieData[3].movieName), for: .normal)
        dcImg4.setBackgroundImage(UIImage(named: DCMovieData[4].movieName), for: .normal)
        dcImg5.setBackgroundImage(UIImage(named: DCMovieData[5].movieName), for: .normal)

    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender:Any?) {
        guard let movieController = segue.destination as? MovieDetailsVS
            else{
                fatalError()
        }
        movieController.moviesData = selectedMovie
    }
    
    @IBAction func marvelBtns(_ sender: UIButton) {
        print("Marvel", sender.tag)
        selectedMovie = MarvelMovieData[sender.tag]
        performSegue(withIdentifier: "goToMovieDetail", sender: nil)
    }
    
    @IBAction func dcBtns(_ sender: UIButton) {
        print("DC", sender.tag)
        selectedMovie = DCMovieData[sender.tag]
        performSegue(withIdentifier: "goToMovieDetail", sender: nil)
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

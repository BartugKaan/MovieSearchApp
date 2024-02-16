//
//  ViewController.swift
//  Movie Searcher
//
//  Created by Bartuğ Kaan Çelebi on 15.02.2024.
//

// UI
// Network Request
// tap a cell to see info about moview
// custom cell

import UIKit

class ViewController: UIViewController,UITextFieldDelegate,UITableViewDelegate, UITableViewDataSource {
  
  
  
  @IBOutlet var table: UITableView!
  @IBOutlet var field: UITextField!
  
  var movies = [Movie]()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    table.dataSource = self
    table.delegate = self
    field.delegate = self
  }
  
  //Field Functions
  
  func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    searchMovies()
    return true
  }
  
  func searchMovies(){
    field.resignFirstResponder()
    
    guard let text = field.text, !text.isEmpty else {
      return
    }
    
    URLSession.shared.dataTask(with: URL(string: "https://www.omdbapi.com/?apikey=\(ApiVariables().apiKey)&s=fast&type=movie")!,
                               completionHandler: {data, response, error in
      guard let data = data, error == nil else {
        return
      }
      //Convert
      
      //Update our movies array 10.24
      
    }).resume()
    
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return movies.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    return UITableViewCell()
  }
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    tableView.deselectRow(at: indexPath, animated: true)
    //show movie details
  }
}

struct Movie{
  
}


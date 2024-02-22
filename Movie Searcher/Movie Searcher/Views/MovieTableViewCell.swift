//
//  MovieTableViewCell.swift
//  Movie Searcher
//
//  Created by Bartuğ Kaan Çelebi on 16.02.2024.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
  
  @IBOutlet var movieTitleLabel: UILabel!
  @IBOutlet var movieYearLabel: UILabel!
  @IBOutlet var moviePosterImageView: UIImageView!
  @IBOutlet var movieType: UILabel!
  
  override func awakeFromNib() {
    super.awakeFromNib()
  }
  
  override func setSelected(_ selected: Bool, animated: Bool) {
    super.setSelected(selected, animated: animated)
    
  }
  
  static let identifier = "MovieTableViewCell"
  
  static func nib() -> UINib{
    return UINib(nibName: "MovieTableViewCell", bundle: nil)
  }
  
  func configure(with model: Movie){
    self.movieTitleLabel.text = model.Title
    self.movieYearLabel.text = model.Year
    self.movieType.text = model._Type.uppercased()
    let url = model.Poster
    if let data = try? Data(contentsOf: URL(string: url)!){
      self.moviePosterImageView.image = UIImage(data: data)
    }
  }
}

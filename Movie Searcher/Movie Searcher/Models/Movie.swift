//
//  Movie.swift
//  Movie Searcher
//
//  Created by Bartuğ Kaan Çelebi on 16.02.2024.
//

import Foundation

struct Movie: Codable{
  let Title: String
  let Year: String
  let imdbID: String
  let _Type: String
  let Poster: String
  
  private enum CodingKeys: String, CodingKey{
    case Title, Year, imdbID, _Type = "Type", Poster
  }
  
}


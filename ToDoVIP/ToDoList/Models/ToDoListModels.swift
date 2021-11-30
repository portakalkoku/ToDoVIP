//
//  ToDoListModels.swift
//  ToDoVIP
//
//  Created by Ozan Barış Günaydın on 29.11.2021.
//  Copyright (c) 2021 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

enum ToDoList {
    
  enum FetchDatas {
      
    struct Request {
        /// No needings to request for this case
    }
    
    struct Response {
        var datas: [ToDoResponseModel]
    }
      
    struct ViewModel {
        
        struct DisplayedData: Codable {
            var day: String
            var task: String
            var completed: String
        }
        
        var displayedDatas: [DisplayedData]
        
    }
  }
}
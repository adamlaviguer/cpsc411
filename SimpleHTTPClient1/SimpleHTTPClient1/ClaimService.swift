//
//  ClaimService.swift
//  SimpleHTTPClient1
//
//  Created by Adam Laviguer on 11/24/20.
//  Copyright © 2020 ITLoaner. All rights reserved.
//

import Foundation

struct Claim : Codable {
    var title : String
    var date : String
}

class ClaimService {

    init(vc : ViewController) {
        viewController = vc
    }
    
    var viewController : ViewController
    var personList : [Claim] = [Claim]()
//    var ps : String
    var currentIndx : Int = 0

    func getNext() -> Claim {
        currentIndx = currentIndx + 1
        return personList[currentIndx]
    }
    
    var successHttp : Bool?

    func isLastEntry() -> Bool {
        if currentIndx == personList.count - 1 {
            return true
        } else {
            return false
        }
        
    }
    
    
    func addClaim(pObj : Claim) {
        // Implement logic using Async HTTP client API (POST method)
        let requestUrl = "http://localhost:8020/ClaimService/add"
        var request = URLRequest(url: NSURL(string: requestUrl)! as URL)
        let jsonData : Data! = try! JSONEncoder().encode(pObj)
        //
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        //
        let task = URLSession.shared.uploadTask(with: request, from: jsonData) {
            (data, response, error) in
            if let resp = data {
                // type of resp is Data
                let respStr = String(bytes: resp, encoding: .utf8)
//                self.ps = respStr
//                print("The response data sent from the server is \(respStr!)")
                self.successHttp = true
                print("The Person List : \(pObj)")
                //
                OperationQueue.main.addOperation {
                    self.viewController.refreshScreen(pObj: pObj)
                }
                //
            } else if let respError = error {
                print("Server Error : \(respError)")
                self.successHttp = false
            }
        }
        task.resume()
    }
    
    func getAll() {
        //var personList = [Person]()
        print("About to send HTTP request to server")
        let requestUrl = "http://localhost:8020/ClaimService/getAll"
        let request = URLRequest(url: NSURL(string: requestUrl)! as URL)
        let task = URLSession.shared.dataTask(with: request){
            (data, response, error) in
            if let respData = data {
                // data is of Data type
                //et respStr = String(data: respData, encoding: .utf8)
                //print("The response data is \(respStr!)")
//                self.personList = try! JSONDecoder().decode([Claim].self, from: respData)
//                print("The Person List : \(self.personList)")
                //
//                OperationQueue.main.addOperation {
//                    self.viewController.refreshScreen(pObj: self.personList[self.currentIndx])
//                }
            }
        }
        //
        task.resume()
    }
}

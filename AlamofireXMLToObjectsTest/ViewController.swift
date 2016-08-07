//
//  ViewController.swift
//  AlamofireXMLToObjectsTest
//
//  Created by Manish  Kumar on 06/08/16.
//  Copyright © 2016 Manish  Kumar. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireXmlToObjects


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        let requestURl = "http://12.27.233.216:8125/pgms/rvimainnhx.pgm?host=12.27.233.216:8125&rqstyp=showxmlpaa&dev=$00046728&"//"http://12.27.233.216:8125/pgms/rvimainnhx.pgm?host=12.27.233.216:8125&rqstyp=showxmlrqa&dev=$00046728&"
        
        
        Alamofire.request(.GET, requestURl)
            .responseObject { (response: Result< Response, NSError>) in
                if let result = response.value {
                    // That was all... You now have a WeatherResponse object with data
                    
                    print("result qlist: \(result.qlist)")
                }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


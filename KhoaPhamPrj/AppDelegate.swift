//
//  AppDelegate.swift
//  KhoaPhamPrj
//
//  Created by khacpham on 2/15/17.
//  Copyright © 2017 oic. All rights reserved.
//

import UIKit

typealias byte = UInt8

postfix func ++ ( person: inout Person) -> Person {
    let newPerson = Person(firstName: person.firstName, lastName: person.lastName)
    return newPerson;
}

enum CarClassification: String {
    case Estate = "Estate"
    case Hatchback = "Hatchback"
    case Saloon = "Saloon"
}

struct Car {
    var classification: CarClassification
}

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func changeFirstNameOf(person: Person, to: String) {
        person.firstName = to
        //person.setFirstName(name: to);
    }

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        let myUser = Person(firstName: "pham", lastName: "khac")
        changeFirstNameOf(person: myUser, to: "hello")
        print(myUser.firstName)
        
        _ = 0b01010101 | 0b10101010 /* = 0b11111111 */ /* plus operator */
        _ = 10 + 20 /* = 30 */ /* minus operator */
        _ = 20 - 10 /* = 10 */ /* multiplication operator */
        _ = 10 * 20 /* = 200 */ /* division operator */
        _ = 10.0 / 3.0 /* = 3.33333333333333 */
        
        var volvo50 = Car(classification: CarClassification.Estate)
        volvo50.classification = CarClassification.Hatchback
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
}


//
//  UserDefaultUtils.swift
//  AppFlow
//
//  Created by Bipin on 9/6/18.
//  Copyright © 2018 Tootle. All rights reserved.
//

import Foundation

/* Save STRING data*/
func saveDataToPreference(key:String , value:String) {
    
    UserDefaults.standard.set(value, forKey: key)
    
}


/* Save INTEGER data */
func saveDataToPreference(key:String , value:Int) {
    
    UserDefaults.standard.set(value, forKey: key)
    
}


/* Save DOUBLE data */
func saveDataToPreference(key:String , value:Double) {
    
    UserDefaults.standard.set(value, forKey: key)
    
}


/* Save BOOLEAN data */
func saveDataToPreference(key:String , value:Bool) {
    
    UserDefaults.standard.set(value, forKey: key)
    
}

/* Get STRING data from preferences */
func getDataFromPreference(key:String) -> String{
    
    if(UserDefaults.standard.string(forKey: key) == nil){
        
        return "-1"
        
    }else{
        
        return UserDefaults.standard.string(forKey: key)!
        
    }
    
}

/* Get STRING data from preferences */
func getDataFromPreference2(key:String) -> String{
    
    if(UserDefaults.standard.string(forKey: key) == nil){
        
        return "0"
        
    }else{
        
        return UserDefaults.standard.string(forKey: key)!
        
    }
    
}

/* Get INTEGER data from preferences */
func getDataFromPreference(key:String) -> Int{
    
    return UserDefaults.standard.integer(forKey: key)
    
}


/* Get DOUBLE data from preferences */
func getDataFromPreference(key:String) -> Double{
    
    return UserDefaults.standard.double(forKey: key)
    
}

/* Get BOOLEAN data from preferences */
func getDataFromPreference(key:String) -> Bool{
    
    return UserDefaults.standard.bool(forKey: key)
    
}

/* Remove preference data */
func removeDataFromPreference(keyName:String){
    
    UserDefaults.standard.removeObject(forKey: keyName)
    
}

// don't work need to RESEARCH on updation..
func replacePrefereceData(keyName:String, valueName:Bool){
    
    UserDefaults.standard.removeObject(forKey: keyName)
    UserDefaults.standard.set(valueName, forKey: keyName)
    
}



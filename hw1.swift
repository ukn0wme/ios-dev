//
//  hw1.swift
//  homework1
//
//  Created by Daniyal Nurgazinov on 13.09.2024.
//

import Foundation

func main(){
    var firstName: String = "Daniyal"
    var lastName: String = "Nurgazinov"
    var age: Int = 20
    var birthYear: Int = 2003
    var isStudent: Bool = true
    var height: Double = 1.87
    
    let currentYear: Int = Calendar.current.component(.year, from: Date())
    age = currentYear - birthYear
    
    var hobby: String = "Graphic Design"
    var numberOfHobbies: Int = 3
    var favoriteNumber: Int = 7
    var isHobbyCreative: Bool = true
    
    var lifeStory: String = "My name is \(firstName) \(lastName). I am \(age) years old, born in \(birthYear). I am currently a student. I enjoy \(hobby), which is a creative hobby. I have \(numberOfHobbies) hobbies in total, and my favorite number is \(favoriteNumber)."
    
    var futureGoals: String = "In the future, I want to finish the iOS course in my University."
    lifeStory += " " + futureGoals
    
    
    var favoriteEmoji: String = "🎨"
    var futureJobEmoji: String = "👩‍💻"
    lifeStory += " My favorite emoji is \(favoriteEmoji), and my dream job is \(futureJobEmoji)."
    
    print(lifeStory)
}
main()

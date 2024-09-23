//
//  hw2.swift
//  homework1
//
//  Created by Daniyal Nurgazinov on 19.09.2024.
//

import Foundation

func easy(){
    // 1
    let fruits = ["Apple", "Banana", "Cherry", "Orange", "Mango"]
    print(fruits[2])
    
    // 2
    var favoriteNumbers: Set = [3, 7, 15, 22]
    favoriteNumbers.insert(5)
    print(favoriteNumbers)

    // 3
    let programmingLanguages = ["Swift": 2014, "Python": 1991, "Java": 1995]
    print(programmingLanguages["Swift"]!)

    // 4
    var colors = ["Red", "Blue", "Green", "Yellow"]
    colors[1] = "Purple"
    print(colors)

}
easy()

func mid(){
    // 1
    let set1: Set = [1, 2, 3, 4]
    let set2: Set = [3, 4, 5, 6]
    let intersection = set1.intersection(set2)
    print(intersection)
    
    //2
    var studentScores = ["Sanzhik": 85, "Daniyal": 92, "Akbota": 88]
    studentScores["Daniyal"] = 95
    print(studentScores)

    //3
    let array1 = ["apple", "banana"]
    let array2 = ["cherry", "date"]
    let mergedArray = array1 + array2
    print(mergedArray)
}
mid()

func hard(){
    // 1
    var countryPopulations = ["USA": 331_000_000, "India": 1_366_000_000, "Brazil": 211_000_000]
    countryPopulations["Japan"] = 126_000_000
    print(countryPopulations)

    // 2
    let animals1: Set = ["cat", "dog"]
    let animals2: Set = ["dog", "mouse"]
    let unionSet = animals1.union(animals2)
    let finalSet = unionSet.subtracting(animals2)
    print(finalSet)

    // 3
    let studentGrades = ["John": [85, 90, 78], "Emily": [88, 92, 95], "Chris": [80, 85, 89]]
    let emilyGrades = studentGrades["Emily"]!
    print(emilyGrades[1])
}
hard()

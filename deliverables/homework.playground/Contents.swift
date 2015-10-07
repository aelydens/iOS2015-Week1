//: Shopping List - Week 1

import Foundation

//: Create an empty array to store shopping list items
var shoppingList: [String] = []
var s = []
var b = [String]()
var f = Array<String>()

//: Add at least 5 items to the array using 3 different insertion methods
shoppingList.append("Apples")
shoppingList.insert("Oranges", atIndex: 1)
shoppingList += ["Bread", "Eggs", "Avocado"]
shoppingList += ["Grapes"]

//: Sort your array of items
func arraySort(array: [String]) {
    for item in shoppingList.sort() {
        print(item)
    }
}

arraySort(shoppingList);
//: Create a function to print an array, with it's index, with one item per line
for (index, item) in shoppingList.enumerate() {
    print("\(index): \(item)")
}
//: Combine the above. Create a function that takes an array, sorts it and prints it with it's index, with one item per line
var arrayOfAnimals: [String] = ["aac", "bears", "orangutans", "aaa", "aab"]

func arraySortWithIndex(array: [String]) {
    for (index, item) in array.sort().enumerate() {
        print("\(index): \(item)")
    }
}

arraySortWithIndex(arrayOfAnimals)
//: Create a function that returns a new array containing the first letter of each item, in uppercase. The returned array should be sorted and not have any repeated characters.
func upcaseArray(array: [String]) -> [String] {
    var upcasedLetters: [String] = []
    for elem in array {
        let first = String(elem.characters.first!).uppercaseString
        if (!upcasedLetters.contains(first)) {
            upcasedLetters.append(first)
        }
    }
    return upcasedLetters
}


var strings: [String] = ["ball", "zoo", "giraffe", "gat", "gog"]

print(upcaseArray(strings))

//: Create a function that searches the items array and returns all items that match the input string. Ignore uppercase/lowercase differences.
func matchString(array: [String], input: String) -> [String] {
    var matchingElems: [String] = []
    for elem in array {
        if elem.lowercaseString == input.lowercaseString {
            matchingElems.append(input)
        }
    }
    return matchingElems
}


var animals: [String] = ["dog", "bear", "cat", "mouse"]

print(matchString(animals, input: "bear"))



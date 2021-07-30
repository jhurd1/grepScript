/*
* grep.js
* An application for facilitating
* the search of log data,
* especially for sensitive customers who
* must scrub logs or who cannot provide them.
* */

var stringsToSearch = window.prompt("Provide strings to search, separated by a space: ");
var wordQuantity = 0;
var searchArray = [wordQuantity];

function pushStringsToSearch(stringsToSearch)
{
    searchArray.push(stringsToSearch);
    countWords(wordQuantity);
}

function countWords(wordQuantity)
{
    wordQuantity = stringsToSearch.split(/\s+/);
    return wordQuantity;
}

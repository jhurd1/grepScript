/*
* grep.js
* An application for facilitating
* the search of log data,
* especially for sensitive customers who
* must scrub logs or who cannot provide them.
* */

var stringsToSearch = window.prompt("Provide strings to search, separated by a space: ");
var filesToSearch = window.prompt("Please provide the file or folder path: ");
var wordQuantity = 0;
var searchArray = [wordQuantity];

function pushStringsToSearch(stringsToSearch)
{
    searchArray.push(stringsToSearch);
    countWords(wordQuantity);
}

function searchForStrings()
{
        fs.readFile(filesToSearch, function(err, data))
        {
            if (err) throw err;
            if (data.includes(searchArray))
            {

            }
        }
}

function countWords(wordQuantity)
{
    wordQuantity = stringsToSearch.split(/\s+/);
    return wordQuantity;
}


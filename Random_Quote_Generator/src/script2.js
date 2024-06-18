// // document.getElementById('generateButton').addEventListener('click', function() {
// //     window.location.href = 'http://localhost:8080/';
// //
// // });
// document.addEventListener('DOMContentLoaded', function() {
//     const generateButton = document.getElementById('generateButton');
//     const quoteDisplay = document.getElementById('quoteDisplay');
//
//     function fetchRandomQuote() {
//         fetch('http://localhost:8080') // Fetch quote from Dart server
//             .then(response => response.json())
//             .then(data => {
//                 quoteDisplay.textContent = data.quote; // Update quote display
//             })
//             .catch(error => {
//                 console.error('Error fetching quote:', error);
//             });
//     }
//
//     generateButton.addEventListener('click', fetchRandomQuote);
// });
document.addEventListener('DOMContentLoaded', function() {
    const generateButton = document.getElementById('generateButton');
    const quoteDisplay = document.getElementById('quoteDisplay');

    function fetchRandomQuote() {
        fetch('http://localhost:8080') // Fetch quote from Dart server
            .then(response => response.json())
            .then(data => {
                // Extract quote and author from JSON data
                const quote = data.quote.split(' - ')[0]; // Split by dash to separate quote
                const author = data.quote.split(' - ')[1]; // Get author part

                // Format the quote with double quotes around it and author
                const formattedQuote = `"${quote}" - ${author}`;

                // Update quote display
                quoteDisplay.textContent = formattedQuote;
            })
            .catch(error => {
                console.error('Error fetching quote:', error);
            });
    }

    generateButton.addEventListener('click', fetchRandomQuote);
});

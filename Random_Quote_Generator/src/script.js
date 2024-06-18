// async function getQuote() {
//     try {
//         const response = await fetch('http://localhost:8080/quote');
//         if (!response.ok) {
//             throw new Error(`HTTP error! Status: ${response.status}`);
//         }
//         const data = await response.json();
//         const quoteElement = document.getElementById('quote');
//         quoteElement.classList.remove('visible');
//         setTimeout(() => {
//             quoteElement.textContent = data.quote;
//             quoteElement.classList.add('visible');
//         }, 500);
//     } catch (error) {
//         console.error('Error fetching quote:', error);
//     }
// }
async function getQuote() {
    try {
        const response = await fetch('https://quozio.com/');
        if (!response.ok) {
            throw new Error(`HTTP error! Status: ${response.status}`);
        }
        const data = await response.text();
        const quoteElement = document.getElementById('quote');
        quoteElement.classList.remove('visible');
        setTimeout(() => {
            quoteElement.innerHTML = data;
            quoteElement.classList.add('visible');
        }, 500);
    } catch (error) {
        console.error('Error fetching quote:', error);
    }
}

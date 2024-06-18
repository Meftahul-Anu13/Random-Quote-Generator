//
// import 'dart:io';
// import 'dart:math';
//
// void main() {
//   HttpServer.bind("localhost", 8080).then((HttpServer server) {
//     List<String> quotes = [
//       "The greatest glory in living lies not in never falling, but in rising every time we fall. - Nelson Mandela",
//       "The way to get started is to quit talking and begin doing. - Walt Disney",
//       "Your time is limited, so don't waste it living someone else's life. - Steve Jobs",
//       "If life were predictable it would cease to be life, and be without flavor. - Eleanor Roosevelt",
//       "Spread love everywhere you go. Let no one ever come to you without leaving happier. - Mother Teresa"
//     ];
//
//     Random random = Random();
//
//     server.listen((HttpRequest request) {
//       int index = random.nextInt(quotes.length);
//       String randomQuote = quotes[index];
//
//       // Prepare a simple HTML response
//       String htmlResponse = '''
//         <!DOCTYPE html>
//         <html>
//         <head>
//           <title>Random Quote</title>
//            <script src="script2.js" defer></script>
//         </head>
//         <body>
//           <h1>Random Quote</h1>
//           <p style="font-style: italic;">$randomQuote</p>
//           <button id="generateButton">Generate more</button>
//         </body>
//         </html>
//       ''';
//
//       // Set content-type header to indicate HTML response
//      // request.response.headers.contentType = ContentType.html;
//       //request.response.headers.contentType = "Quote Generate";
//       // Write HTML response to the client
//       request.response.write(htmlResponse);
//       // Close the response
//       request.response.close();
//     });
//   });
// }
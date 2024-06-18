
import 'dart:io';
import 'dart:math';

void main() {
  HttpServer.bind("localhost", 8080).then((HttpServer server) {
    List<String> quotes = [
      "The greatest glory in living lies not in never falling, but in rising every time we fall. - Nelson Mandela",
      "The way to get started is to quit talking and begin doing. - Walt Disney",
      "Your time is limited, so don't waste it living someone else's life. - Steve Jobs",
      "If life were predictable it would cease to be life, and be without flavor. - Eleanor Roosevelt",
      "Spread love everywhere you go. Let no one ever come to you without leaving happier. - Mother Teresa",
      "In the end, it's not the years in your life that count; it's the life in your years. - Abraham Lincoln",
      "The only limit to our realization of tomorrow will be our doubts of today. - Franklin D. Roosevelt",
      "Life is what happens when you're busy making other plans. - John Lennon",
      "Success is not final, failure is not fatal: It is the courage to continue that counts. - Winston Churchill",
      "Life is a journey that must be traveled no matter how bad the roads and accommodations. - Oliver Goldsmith",
      "The purpose of our lives is to be happy. - Dalai Lama",
      "You miss 100% of the shots you don't take. - Wayne Gretzky",
      "Life is either a daring adventure or nothing at all. - Helen Keller",
      "Do not dwell in the past, do not dream of the future, concentrate the mind on the present moment. - Buddha",
      "Believe you can and you're halfway there. - Theodore Roosevelt",
      "The best way to predict the future is to create it. - Abraham Lincoln",
      "The only way to do great work is to love what you do. - Steve Jobs",
      "Life is really simple, but we insist on making it complicated. - Confucius",
      "Challenges are what make life interesting and overcoming them is what makes life meaningful. - Joshua J. Marine",
      "Life is 10% what happens to us and 90% how we react to it. - Charles R. Swindoll"
    ];


    Random random = Random();

    server.listen((HttpRequest request) {
      // Set CORS headers to allow requests from any origin
      request.response.headers.add('Access-Control-Allow-Origin', '*');
      int index = random.nextInt(quotes.length);
      String randomQuote = quotes[index];

      // Prepare a simple HTML response and html view
      // String htmlResponse = '''
      //   <!DOCTYPE html>
      //   <html>
      //   <head>
      //     <title>Random Quote</title>
      //
      //   </head>
      //   <body>
      //     <h1>Random Quote</h1>
      //     <p style="font-style: italic;">$randomQuote</p>
      //
      //   </body>
      //   </html>
      // ''';
      //
      // // Set content-type header to indicate HTML response
      // request.response.headers.contentType = ContentType.html;
      // //request.response.headers.contentType = "Quote Generate";
      // // Write HTML response to the client
      // request.response.write(htmlResponse);

      // Handle GET requests to /quote
      if (request.method == 'GET') {
        int index = random.nextInt(quotes.length);
        String randomQuote = quotes[index];

        // Send JSON response with the quote
        request.response
          ..statusCode = HttpStatus.ok
          ..headers.contentType = ContentType.json
          // ..write(htmlResponse);
         ..write('{"quote": "$randomQuote"}');
      } else {
        // Handle other requests
        request.response
          ..statusCode = HttpStatus.notFound
          ..write('No data found');
      }
      request.response.close();
    });
  });
}

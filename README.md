Chatterbox
----------

A super-simple Sinatra/Faye chat room.

Instructions
============

1. Clone the repository.
2. Install the following gems:
   * sinatra
   * faye
   * haml
   * thin
3. Run the Faye server on port 9001: `rackup faye.ru -s thin -E production -p 9001`
4. Run the Sinatra server on IP 0.0.0.0: `rackup config.ru -s thin -o 0.0.0.0`
5. Visit the root URL and create a room.
6. In another tab/browser, browse to the root URL and join the room you created.
7. Have a conversation with yourself!

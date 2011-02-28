## Intro

This is a version of the echo server [introduced in Pratik's blog post](http://m.onkey.org/websockets-made-easy-with-cramp) that's been changed to use the current version of Cramp ([ref a311066d747fc6ad9f2c](https://github.com/lifo/cramp/commit/a311066d747fc6ad9f2cd356b3e501c4e6d91bee)).

I used it to diagnose some websocket oddness we're seeing in an internal chat app.

## Starting the server

    $ git clone ...
    $ bundle install
    $ ruby ./echo_controller.rb

## Testing the server

You can test this in the Google Chrome javascript console.

    > var s = new WebSocket('ws://localhost:3000/')
    undefined
    
    > s.onmessage = function(e) { console.log(e.data) }
    function (e) { console.log(e.data) }
    
    > s.send('hello world')
    true
    hello world
# macappdemo
Hello World App for macOS - Structure of macOS Application bundle

## This makes an app called "hi"

### It is a hello, world app.  
o It's only function is to call an AppleScript that puts up a Hello, World dialog with an icon.
o The purpose is to demonstrate how to generate a macOS application using a script on the command line.

1. Clone the repository into your home directory.
#### `git clone https://github.com/benitoite/macappdemo ~/macappdemo`
2. Generate the Application bundle
#### `cd ~/macappdemo && sh hw-bundle`
3. Run it.
#### `open -a hi`

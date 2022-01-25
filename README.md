# display-brightness-scripts
Bash scripts for increasing and decreasing display brightness, intended for use with [Solaar](https://pwr-solaar.github.io/Solaar/) or any other hotkey mapping tool on Linux.

### Why? 
On a Mac, you can use [MonitorControl](https://github.com/MonitorControl/MonitorControl) to adjust the brightness of your display using the keyboard. 
I wasn't able to find a batteries-included tool for Linux, but most of the hard work to enable a similar solution was already done by contributors to Solaar. 
The scripts I've added to this repo, while a bit clunky, were the last thing I needed to complete to get similar functionality to MonitorControl on Linux.

### Usage
1. Clone the repository
2. Ensure you have ddcutil installed
3. After modifying `brighten.sh` and `dim.sh`, move them to a convenient location, like `~/Scripts`.
4. (optional) Add [new Solaar rules](https://pwr-solaar.github.io/Solaar/rules.html) to execute `brighten.sh` and `dim.sh`. 
   1. The keys on your keyboard may not align with what you see on the Solaar GUI
   2. For example, my Logitech MX Keys Business keyboard has the dictation key (F7) represented by `Show Desktop Fn` in Solaar and the emoji key (F6) by `Backlight Down Fn`
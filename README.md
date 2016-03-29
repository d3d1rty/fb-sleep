#fb-sleep.rb
##About
This script is a Ruby implementation for one of Justin Seitz's blog posts.
The original blog post can be found [here](http://www.automatingosint.com/blog/2016/03/osint-facebook-when-people-sleep/).

##What it Does
`fb-sleep.rb` will aggregate the number of posts per hour based on information collected from a FB user's page. This data can then be analyzed to determine a user's average sleep times.

##Usage
Follow the first half of Justin's post, collecting the timestamps for the posts using JavaScript. Instead of pasting the timestamps into the script directly, make a new text file named `timestamps.txt`, paste the timestamps into the text file, and save it to the same directory in which the script resides. An example file has been provided with this repo. The file you create cannot have any blank lines!

Read the code to understand how it works; I've documented each block in case you have trouble, but its fairly straitforward.

Run the script using `ruby fb-sleep.rb` and it will output the hours and number of posts per hour to a CSV file named `fb-sleep.csv`.

Follow the rest of Justin's post for tips on analyzing the data.

##Dependencies
I tested the script with Ruby 2.2.3p173.

##Limitations
All timestamps are UTC. Keep this in mind when conducting analysis.

##Credits
Thanks to Justin for the original post.

##Questions/Comments/Concerns
If you have any questions regarding this project, send me a message and I'd be more than happy to explain my code.


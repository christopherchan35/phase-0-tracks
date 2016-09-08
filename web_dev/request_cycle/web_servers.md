##2. What are some of the key design philosophies of the Linux operating system?
Unix was designed with minimalist and modular software development. It emphasizes building simple, clear, modular code that can be easily maintained and repurposed by devs other than its creators.

Each program should do one thing and do it well. Write programs to work together. Design and build software to be tried early, throw away or rebuild clumsy code. Use tools to lighten a proramming task, in preference to unskilled help.

-- Info from Wikipedia

##3. In your own words, what is a VPS (virtual private server)? What, according to your research, are the advantages of using a VPS?
A virtual private server is a webserver you can use to host websites instead of hosting them locally on your own server. From the tutorial video, there are a bunch of different services that can do this like digitalocean or amazon.

There are several advantages of using a VPS such as the stability and realiability for basic web hosting needs. The user has more control with root access as opposed to shared hosting services. VPS allows a website to be scaleable if needed, simply by adding more resources to the "container". Lastly, they can be quite cost effective. DigitalOcean had pricing starting per $5 a month to host a website and other sites can start at as low as $10 per month.

##4. Why is it considered a bad idea to run programs as the root user on a Linux system?
Root access gives the user control over everything in the system. While a user account will only have access to certain files, and usually not have the ability to delete critical files. Also for security issues, a malicious bug or software cannot do as much in a user account. But if it had root access, then everything in the system is at risk.

It also protects the system from yourself. I've seen a bunch of headlines where someone accidentally deleted all their companies files by using "rm -rf *" or something like that. This will not be possible on a seperate user account and save your company the trouble. I think of it as git branches, you basically do not want to make changes on master(root) and instead make changes on different branches(user accounts).
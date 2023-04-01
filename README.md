# Parktivities - MariHacks 2023

TO-DO: You need xampp for this (if you don't already have it, download it here https://www.apachefriends.org/download.html) and Follow the steps below:

1 - Clone the Marihacks-2023 folder under your /xampp directory

2 - To enable vhosts, Go to xampp\apache\conf\extra\httpd-vhosts.conf and append the following to the document:


<virtualhost *:80>
    ServerAdmin webmaster@email.com
    DocumentRoot "c:/xampp/MariHacks-2023"
    ServerName MariHacks.localhost
    ErrorLog "MariHacks.log"
    CustomLog "MariHacks-access.log" common
    <directory "c:/xampp/MariHacks-2023">
        AllowOverride All
        Require all granted
    </directory>
</virtualhost>

3 - Once you save the file, close it and start up xampp

4 - In XAmpp, start apache and mysql

5 - Open your browser and write the following url: Marihacks.localhost

6 - Now you can use our web application


# Project Description

Marihacks-2023

Parktivity - A website for Montrealers

by Sayem Shah, Hayk Petrosyan, Maxym Galenko and Hussain Amin


Problem:

Have you ever went to a parc and weren't allowed to do a cookout with your friends? There are many parks all over Montreal that don't allow you to partake in particular activities and there is no way to know in advance whether you can or not. For instance, park X allows people to do walk their dogs, but park Y does not. Furthermore, this information is not publicly available.


Solution:

The goal of our web application is to let people inform themselves of what activities a parc permits so they can choose the right parc for the activity they want to do without getting told off. In addition, they can chat with others to let them know what they're up to in order to organize events.

Big Shoutout to Alex Vilvert, Computer Science Technology Coordinator at Vanier College

His linkedin: https://www.linkedin.com/in/alexvilvert/

# Final Exam - Partylstr
## The Problem
Bob is a college student who thinks it would be a really cool idea to aggregate all college parties in one place.  He wants party hosts to be able to add, edit, and delete parties from the system. He also wants to make it possible for people to rsvp to indicate whether or not they're going to the party.

Bob started working on the app when he was a MIS major, but later decided he wanted to switch to anthropology because he doesn't have the patience for coding and wants a less predictable career path. He never released the app.

To make this website a reality and serve the millions of party app-hungry college students out there, YOUR objective is to pick up where Bob left off and get a minimum viable product up and running.

## The Rules
You can use any resources online but are not permitted to chat with anyone. If you are found talking to anyone, you will fail. You are only permitted to ask the instructor clarification questions. 

## Objectives
1. Clone the repository onto your nitrous box **2 minutes**
2. Review Bob's existing code. Review the finished version of the site (what you should end up with) at http://partylstr.herokuapp.com. You'll need to sign up for an account. **15 minutes**
3. Install the necessary gems on your system (hint: requires the bundle command) and generate the necessary tables (hint: requires the rake command) **2 minutes**
4. Load some sample party, user, and rsvp data in the system by entering `rake db:seed` in the terminal. **2 minutes**
5. Create a page that lists all the parties in the system. **30 minutes, 25% of grade**
    * This page should load when the user accesses the root url `/`. 
    * You will need to use the `static` controller and the `index.html.erb` that have already been created for you. 
    * If there are no parties in the system, it should display the message "No parties found! Maybe you should add one." and link to the page that will add a new party to the system. 
    * The parties should be in an unordered list.
    * If the user has already RSVPed to a particular party, then an option to change the RSVP should be provided. A user can click either "RSVP Going" or "RSVP Not Going" and it should RSVP them for the party as either yes or no depending on which link they click. You can only RSVP yes or no, there is no maybe. 
    * You can have a checkmark symbol show up for attending the party by using the HTML entity code `&#10003;` - the X symbol is HTML entity code `&#10006;` and can show up for not attending a party. Implementing the checkmark and X symbols are optional. 
    * Once clicking on a link, they will be redirected back to the index page with the message "Thank you for RSVPing". 
    * You will need to add the action to create and update a user's RSVPs in the RSVP controller. You should use one action for this.
    * Commit your code. Do not attempt to push it to GitHub.
6. Create a personal dashboard (located at `/dashboard`) for the user that shows parties that they are hosting and all the parties they have RSVPed to. **30 minutes, 25% of grade**
    * If they are not hosting any parties, the page should have a link for them to host one. 
    * If they are hosting parties, a link to edit or destroy each party should be provided.
    * For every party they have rsvped to, they should have the option to change that rsvp.
    * There is a blank controller action defined, but no view or route setup yet. You will need to update the controller action, create the view, and setup the route. 
    * Commit your code. Do not attempt to push it to GitHub.
7. Add a mailer that sends an email to the party host's email address once a person RSVPs to their party. **30 minutes, 20% of grade**
    * There should be both a plain text and HTML version of your email. A sample version of the email is below. 
    * The email should come from bob-awad@mailinator.com and be sent to the party host's email address. **Hint: you should use mailcatcher for emails**.
    * Some help setting up mailcatcher is available here: https://gist.github.com/hpanahi/5bb7b0adfec678f80d5b 
    * Commit your code. Do not attempt to push it to Github.
8. Implement bootstrap to make the website responsive. **20 minutes, 20% of grade**
    * There should be no tables anywhere in your code or **any of the code that was provided to you** except for the list of parties in the scaffold-generated view at `/parties/`.
    * Your completed site does not have to look the same as the example site provided, but try your best to make it look good. Feel free to view the source code of the example site and copy as needed. 
    * In the application view file, add a link to the user's dashboard and to the create new party form for logged in users. 
    * Make sure to use the bootstrap CDN at http://bootstrapcdn.com/ 
    * Commit your code. Do not attempt to push it to GitHub.
9. Deploy to Heroku. **10 minutes, 10% of grade**
10. Add your instructor as a collaborator by entering `heroku sharing:add hpanahi@uh.edu` in the terminal. **If you do not complete this step, your exam cannot be graded.** **2 minutes**
11. With any remaining time, review your code and compare to the site http://partylstr.herokuapp.com to make sure it functions as expected. 
    * Note that the email functionality will not work in the Heroku production environment - you will need to comment out the line that sends out the email if you want to test the code on Heroku. You will **not** lose credit if you leave the line commented out after you've reviewed the application on Heroku.
12. There is no step 12. You're done! 

## Sample RSVP email sent to party host
In this case, the title of the party was "End of Fall Semester Party" and the name of the user RSVP'ing was "The Instructor". Remember that an email should be sent regardless of whether or not the person is going - an RSVP is just a response and not necessarily a yes.

### HTML version
```html
<h1>New RSVP for End of Fall Semester Party</h1>
<p>The Instructor just RSVPed for your party.</p>
```

### Plain text version
```text
==New RSVP for End of Fall Semester Party==
The Instructor just RSVPed for your party.
```



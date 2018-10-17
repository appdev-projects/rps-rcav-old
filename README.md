# Rock Paper Scissors

We are going to build a simple game. Users are allowed to choose Rock, Paper, or Scissors by visiting one of the following addresses:

 - `https://[YOUR CLOUD9 APP PREVIEW DOMAIN]/rock`
 - `https://[YOUR CLOUD9 APP PREVIEW DOMAIN]/paper`
 - `https://[YOUR CLOUD9 APP PREVIEW DOMAIN]/scissors`

And we will tell them whether they won or lost.

#### [Here is the target for this project.](https://rps-rcav-target.herokuapp.com)

It's different in one crucial way from the [RPS HTML project](http://rps-bs4-final.herokuapp.com/) you built — _it actually works_. In other words, it is a _dynamic_ application, not just a static mockup. Finally!

## Setup

 1. From [your Cloud9 repositories list](https://c9.io/account/repos), set up a workspace [as usual](https://guides.firstdraft.com/starting-on-a-project-in-cloud9).
 1. Set up the project: `bin/setup`
 1. Start the web server by clicking "Run Project".
 1. Navigate to your live application preview.
 1. As you work, remember to navigate to `/git` and **commit often as you work.**
 1. Make new branches freely to experiment! _Especially_ before starting on a new task.
 1. You'll see the standard "You're on Rails" welcome page for a brand new, blank Rails application.

## Route → Controller → Action → View

This is currently a brand new Rails app, with absolutely no routes, controllers, etc. **You are going to build the whole thing, soup to nuts, by yourself; we haven't provided any starter code this time.**

Add support for each of the three addresses, `/rock`, `/paper`, and `/scissors`, one at a time. For each one,

 1. Connect the [RCAV dots](https://guides.firstdraft.com/rcav-flowchart.html) and display "Hi!" to prove that you did so. Make up whatever names you want for the controller and action.
 1. Now step back into the action and write some logic to determine whether the player won or lost. Put the computer move and the outcome into output variables.
 1. In the view template, display the output variables. Format it a little with some markup and some copy.
 1. Your styling doesn't have to match the target, but **make sure the content and capitalization match exactly**. e.g. use "We played paper!" instead of "we played Paper"

## Submitting

`rails grade` when you're ready for feedback/to submit.

## Stretch Goals

Once you have completed the above for all three addresses,

 1. On each page, add links to get to the other two pages (so that our users don't have to keep typing into the address bar).

 1. Use [BootstrapCDN](https://www.bootstrapcdn.com/) to connect Bootstrap or a Bootswatch.

    You will find the `<head>` of _all_ of our view templates in the file `app/views/layouts/application.html.erb`, which is a wrapper or "layout" that surrounds every view template that we send to our users.

    If you go examine the `application.html.erb` file that we got out-of-the-box when we generated the new application, you'll see that it includes all of the usual HTML boilerplate -- `<!DOCTYPE>`, `<html>`, etc.

    Notice the line that says `<%= yield %>.` That is where the contents of our view templates get plugged in before the entire response gets sent to our users' browsers.

    This is a great way to DRY (Don't Repeat Yourself) up repetitive markup like navbars, footers, links to stylesheets, etc. It's one of _many_ advantages to using a dynamic framework like Rails over writing static HTML.

 1. Use some [Bootstrap classes and components](http://getbootstrap.com/) in your view templates.

 1. You can also still add any images that you like to the `public/` folder, and use them as the `src` for `<img>`s.

    For example, if you create a file called `public/rock_image.jpg`, you can use it like this:

    ```html
    <img src="/rock_image.jpg">
    ```

    Notice that the file just get served directly from the root of the domain if you place it directly in the `public/` folder. You can also create subfolders to keep things organized, if you like.

 1. That said, [Font Awesome](https://fontawesome.com/icons/) has icons for rock, paper, and scissors. Find them and use them.

 1. If you want to, you can also create another stylesheet for additional styles in the `public/` folder and `<link>` to that.

 1. Add a root URL such that visiting the bare domain leads to a landing page with some information about the game. Hint: the first argument of the route will just be the plain slash, like so:

    ```ruby
    get("/", { :controller => "zebra", :action => "giraffe" })
    ```

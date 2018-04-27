# Pre-Workshop Installation and Set Up Guide

This guide will explain the process of setting up your local development environment for the workshop.  This guide assumes you are using a \*nix based command line prompt and either a \*nix based or Windows Operating System.  If you are using a different command line prompt and/or operating system, note that the order and exact nature of the installation and configuration may vary.  However, we have taken steps to note what likely differences in commands may be.

# Table of Contents
1. System Set Up
2. Repo Configuration
3. PostgreSQL
   * Linux
   * Windows
4. Database
5. Finish

## System Set Up

We'll start with installing a number of programs on your computer that we'll use later during set up and during the actual workshop.  First, ensure that you have a copy of git on your computer.  If not, you can find installation instructions [here](https://git-scm.com/downloads).

Now that git is set up, we'll install the latest version of Ruby, 2.5.  If you already have Ruby installed on your computer, you can check what version you have by using the following command in your terminal:

```
ruby --version
```

If you have an older version of Ruby, like 2.4, then that's fine - although I recommend using the same version as everyone else, you should be able to get everything to work.

If you need to upgrade your version of Ruby, or install it altogether, the recommended approach is to use a version manager such as RVM or rbenv.  Instructions for installation and usage can be found at the links below:

* [RVM](https://rvm.io/rvm/install)
* [rbenv](https://github.com/rbenv/rbenv)

Note that some version managers have issues with Windows and/or Windows Command Prompt and Powershell. In a pinch, you can head to the [official Ruby website](https://www.ruby-lang.org/en/downloads/) for more information and options on installing the language on your local computer.

Once you install Ruby, you'll then install the latest version of Rails, 5.2.  Since Rails is a Ruby library, there's not much you need to do to install it - you just need to run the following command in our terminal:

```
gem install rails
```

That will install quite a few files and packages, but don't worry, it's all a part of the process. :)

The database we'll be using for our web-app is PostGreSQL.  You can find a link to download it [here](https://www.postgresql.org/).

In the workshop, we'll be using ngrok and Google Chrome.  Both programs can be downloaded using the following links:

* [ngrok](https://ngrok.com/download)
* [Google Chrome](https://www.google.com/chrome/)

Note that you do not need to sign up for an account with ngrok - that is completely voluntary.  The application will still work without a signed in user.

Finally, at the end of the workshop, we'll deploy our web app using Heroku.  For this, we will need to sign up for an account, which you can do [here](https://www.heroku.com/).  Once you've created an account, download the Heroku CLI, which we'll use during the workshop.  The CLI can be found [here](https://devcenter.heroku.com/articles/heroku-cli).


## Repo Configuration
Using your command line, navigate to the location where you will store your local copy of the database.  For example, in your terminal, you can use the `cd` command to open the folder where you will store the copy:

```
cd /Users/my_username
```

Then, use the following command to clone a copy of the repo to your local environment:

```
git clone https://github.com/rlgreen91/betterreads.git
```

Once the clone operation is complete, navigate into the betterreads folder using the following command:

```
cd betterreads
```

Use the following command to install dependencies:

```
bundle install
```
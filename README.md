# Hub Page Buzzer

## A buzzer?

If you are using github pages service like I do, you might want to share some major changes about the pages with your friends. So I'm building a (virtual) buzzer, which buzzes (post a new status in your SNS timeline) whenever you push some "major" changes to your pages repo. 

## What is the "major" change?

Well, you are the owner of your pages, so you can decide what the major change is. For example, maybe you are developing on a dev-branch, and anychanges from this branch should not cause the buzzer to buzz since it's in the dev status. Another clue of "major" comes from the git commit log message, any commit with "test" or "fix bug" may not be a major change, on the contrary, commit with "upgrade" or "release" maybe the commit you want to share with your friends. Whatever the case, the buzzer services you. You can use it's predefied filters, like filtering the commit log message, or, more exciting , you can write a JavaScript function that judges if the commit should be shared. For detailed information, please checkout the documentation later when I finished the coding work.

## To whom can I share?

Basically, your friends on SNS. Since I'm in China, I will start by supporting two major Chinese service providers, namely "RenRen" and "Weibo". Since I'm gonna use OAuth and I'm planning to design an adapter layer, any new service should be quite easy to be written on the list.

## Can I design the content that should be shared?

Of course! I'm kind of introducing some naming conventions to solve this problem. It's quite like the route rules if you are familiar with any web framework, like django or ruby on rails. For example, the ```template_twitter.erb``` will be the first to consult when you are sharing some thing new in twitter, while ```template.erb``` is the last one to be refered since it's the most general one. Since I'm gonna build this buzzer with ruby, I'm using the ```erb``` template engine for clarity. Maybe I'll introduce some new engine later.

## How can I mange the buzzer?

Currently, I'm thinking of providing a wizard the first time you log in your system, or add a new repo to be buzzed. There will definitely be a management UI for you to config the repos and the content templates as well. Also, I'm considering a command line interface for you to easily push these changes.

## How to get it real?

I'm going to build this buzzer in Ruby as mentioned before, and I'm choosing Sinatra as the web framework. It's warmly welcome if you are interested and want to help me here! Since this is only a 20% project for me, so I can only work on it when I'm avaliable.

## How can I use this buzzer?

If you are only interested in using this buzzer rather than join me and tweaking it, I will host a buzzer on heroku, which will be free for everyone to register and use it. Quite cool, huh?
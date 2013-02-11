---
title: The pain of finding a text editor that suits you
date: 2011-04-25
tags: Java, Python, Ruby, "Technical Mumbo Jumbo", "Text Editor"
lang: en 
---

###Since the projects I'm working on are increasing size, I've been browsing all around the Internet to find _the_ text editor with programming features that really suits me.###

__Textmate__ is definitively a very pleasant editor. But there are two minor hitches. It's a commercial software and it's only running on MacOS. Upset I wouldn't be able to use it daily, I tried to find text editors sharing the "feel" and features of TextMate, with, however, few more expectations. I'd like my perfect text editor to be:

1. open source, as I sometimes meet weird bugs needing patches;
2. have a strong support for color themes and snipsets;
3. be very friendly with Ruby and Ruby on Rails;
4. run natively or semi-natively on GNOME, therefore, I'd like to avoid KDE-based editors;
5. be light enough!

####Light enough, why?####

In the past, I've always used Eclipse. It has some incredible features, with plugins for almost any language. But a bright question once popped out of my head: "Am I using all the feature that big IDE is offering me?"

__Short answer: "No."__

I love Eclipse when I write Java (and sometimes C++), especially for Android. But I really need to find something else to use with Ruby, Python or other scripting languages. Something lighter. Most people would advise me __vi__ or __Emacs__, but there's just one snag. I don't like any of them. Until recently I had never considered looking into the gap between huge fatty IDE and these old powerful text-editor I always found unattractive. That mistake is now fixed.

I came across text editors I already knew such as [Geany](http://www.geany.org/ "Geany website") Those were not what I was looking for. Then I heard about GMate.

####GMate####

[GMate](https://github.com/gmate/gmate "GMate repository on GitHub") is not a text editor, it's rather a set of plugins for Gedit hosted on github. Some of them have been purposely designed to mimic TextMate behaviors, while others have just been gathered into the GMate bundle. This collection is awesome. It really turns the old simple Gedit into a powerful text editor. Surprisingly, boosted Gedit was the closest candidate to what I was looking for.

I've also found two editors very promising. Both are not advanced enough to be really used on a production level, yet they come with powerful features.

####Scribes####

[Scribes](http://scribes.sourceforge.net/ "Scribes website") is a minimalist and extensive text-editor developed for GNOME, using the Python language. What does minimalist means? Take a look:

<figure>
    <img title="Scribes - Minimalistic Text Editor" src="http://scribes.sourceforge.net/smart.png" alt="Scribes - Minimalistic Text Editor" />
    <figcaption>
        Scribes - Minimalistic Text Editor (from Scribes website)
    </figcaption>
</figure>

That reminds you a bit of vi, doesn't it? Well, the creator of scribes has been a vi user for years. Though it's still far less powerful than vi, I'd consider it as a very promising editor. It's simple, powerful and shortcut-driven. But it misses some key features. It's not yet possible to work with projects, which is an important drawback. Plus, there is no true stable release, as the software is still under heavy development.

####Redcar####

[Redcar](http://redcareditor.com/http://scribes.sourceforge.net/ "Redcar Editor Website") is developed using Ruby and was previously written against GNOME, using the Vala language. More than a year ago, it switched for JRuby, now using JFace/SWT toolkits. Redcar is also a very promising text-editor with numerous interesting features. It's a real TextMate wannabe, less minimalist than Scribes, though.

<figure>
    <img title="Redcar Editor" src="http://redcareditor.com/images/redcar-4.png" alt="Redcar Editor" />
    <figcaption>
        Redcar Editor (from Redcar Editor Website)
    </figcaption>
</figure>

This text-editor is amazingly promising. I'll keep an eye on this one, for sure.

I'll be using GMate-boosted Gedit for now, waiting for Redcar and Scribes to be more mature. I may contribute to Redcar though!
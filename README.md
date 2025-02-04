# Dynabook
	
TLDR: What would a Dynabook (a la Alan Kay) look like from the inside? Here is the result of one user's system, lived in and honed for over a decade.
	
# Overview
	
NB. This section is an export of the class comment of `BaselineOfDynabook`. When viewed from inside the system, it is live, dynamic and beautiful. "Just the markdown" only gives you a taste. We suggest you dive in and view the documentation as it was intended as quickly as possible - it will be more enjoyable and productive!

Alan Kay's Dynabook [2] dream is often explored from the perspective of creating such a system. But what would/could a Dynabook look like after actually being lived in for a long period. What sorts of tools and services would appear? How would they interact?

You can start by exploring my core components (start with the class comments of the BaslineOfXyzs):
```smalltalk
BaselineOfDynabook coreBaselines
```

##What is a Dynabook?
Buckle your seatbelt. Here's an excerpt from my longer blog post ["Programmers: You Probably Don’t Know What a Computer Is"](http://seandenigris.com/blog/?p=1092), about Smalltalk, the environment powering this system:

You may not realize it, but you have opened a portal to some of the greatest minds in the history of our industry. In the beginning, for many of our heroes — Doug Engelbart, Alan Kay, Seymour Papert — computing was about the possibility of evolving the general level of human thought for the benefit of mankind. Effective critical thinking is vital to modern life e.g. the proper functioning of democratic governments. Yet traditional media have been ineffective at improving our thought on a large scale. Today, we’re mostly glorified “caveman with briefcases”, reacting to the same human universals as our distant ancestors — Fantasies, Stories, Superstition, Religion/Magic, Vendetta.

So what does this have to do with computing?!

I’m glad you asked :) In 1972, Alan Kay envisioned a “dynamic medium for creative thought” which he called a Dynabook [1]. It was an answer to the problem described above — a computer to support and guide minds to the level required to overcome our uglier instincts, and replace them with our highest ideas, like Equal Rights, Democracy, Slow Deep Thinking, Legal System over Vendetta, Theory of Harmony — ideas which do not take seed on their own, but must be actively nurtured.

So what does this have to do with programming?!

I’m glad you asked that, too :) Smalltalk is interim[2] Dynabook software! You have in your hands, not a programming language, but a live, dynamic, turtles-all-the-way-down environment designed to provide “support for the creative spirit in everyone”.

More practically, Smalltalk is a programming tool that allows productivity unimaginable in most systems. And, if you put in enough time and effort to actually think in it, it will help you program better in any language you use. But, I think it would be a great waste if you left Smalltalk “a better programmer”, when the questions before you are:

- What really matters?
- How can computers fulfill on that?
- How can I, as a programmer, contribute to that?

From PARC's 1977 paper [1]:
The Learning Research Group... is concerned with all aspects of the communication and manipulation of knowledge. We design, build, and use dynamic media which can be used by human beings of all ages. Several years ago, we crystallized our dreams into a design idea for a personal dynamic medium the size of a notebook (the Dynabook) which could be owned by everyone and could have the power to handle virtually all of its owner's information-related needs. Towards this goal we have designed and built a communications system: the Smalltalk language, implemented on small computers we refer to as "interim Dynabooks." We are exploring the use of this system as a programming and problem solving tool; as an interactive memory for the storage and manipulation of data; as a text editor; and as a medium for expression through drawing, painting, animating pictures, and composing and generating music.

## References
1. ["Personal Dynamic Media"](https://www.computer.org/csdl/magazine/co/1977/03/01646405/13rRUxZRbs8)
2. [Smalltalk: Design Principles Behind Smalltalk](http://www.cs.virginia.edu/~evans/cs655/readings/smalltalk.html)
	
# Installation
In GToolkit (preferably) or Pharo (v. 9 best supported at time of writing), do the following:

```smalltalk
[
EpMonitor current disable.
[ Metacello new
	baseline: 'Dynabook';
	repository: 'github://seandenigris/Dynabook';
	"onConflict: [ :ex | ex allow ];"
	load ] ensure: [ EpMonitor current enable ].

] fork.

```
N.B. you only have to do the outer fork if on GT and you want the UI to stay responsive during the load.

# Disclaimer

This project is part of a ~20 year (as of 2021) exploration of the [Dynabook](https://github.com/seandenigris/Dynabook) idea (a la Alan Kay). It's intensely personal and opinionated and I've open sourced it due to repeated requests. Use at your own risk. Any part may change at any time. I'm happy to give support when I have time in the form of explanations, but do not expect me to implement any particular feature, or even accept PRs if they don't feel right. That said, I'm happy to have anyone along on the journey :)
# License Explanation
The license is MIT. However, my original intent was to release my Dynabook libraries under a copy far left license (free use for cooperatives, but negotiated licenses for those utilizing paid labor for profit). I love sharing any work I do, but am disgusted by the propect that (especially multi-billion-dollar) corporations will exploit my work for free, especially toward ends with which I don't philosophically agree. However, after many discussions with colleagues, it appears that at this moment there is just no way to protect one's work from parasites without effectively keeping it from everyone. Even GPL, which doesn't even come close to "solving" the problem stated above, seems enough to put off most people. In closing, now that my intentions are clear, I request the following from any entity utilizing wage labor or selling for profit who uses my work:
1. Attribution
2. Pay for what you use, or don't use it

While there may be no legal means for me to enforce the above given that this code is released under MIT, my intentions should be clear; violate the above at risk to your own conscience.

# Components	
The following projects are my core components:
- [Nature](https://github.com/seandenigris/Nature) - A naturalist's companion, focused on identifying and logging plant and mushrooms.
- [Resources Live](https://github.com/seandenigris/ResourcesLive) - Free users to communicate with *objects* instead of managing *files*. Files conflate *what* a thing is with *where* it is. We take care of the boring location part for you. So you can "play an mp3" instead of "opening an mp3 file in a player app". Nicer, no?
- [The Project Project](https://github.com/SeanDeNigris/The-Project-Project) - Project Management unleashed from an "application" stovepipe, running on GToolkit (Smalltalk)
- [Flashcards St](https://github.com/seandenigris/Flashcards-St) - Unleash flashcards from simple text on "front" and "back". Any object can be `material` for multiple cards (or card types)
- [Ukulele](https://github.com/seandenigris/Ukulele-Pharo) - TLDR: A companion in learning and playing, in a live system of supporting objects e.g. media library, bookmarking, contact management (e.g. for teachers and peers). Currently manages things related to playing e.g. songs, lessons, tabs.
- [Bookmark Magic](https://github.com/SeanDeNigris/Bookmark-Magic) - URL bookmarking in a live, dynamic world.
- [Quote Me](https://github.com/SeanDeNigris/Quote-Me) - Quotation DB freed from an "application" stovepipe, in GToolkit (Smalltalk)
- [Ideas](https://github.com/SeanDeNigris/ideas) - KMS mind-map interface powered by @feenkcom's #GToolkit. Features `concepts` (like dictionary terms), `compound concepts` - concepts made up of other concepts, `ideas` (like dictionary definitions) connect concepts in an interesting/value-added way
- [Living Library](https://github.com/SeanDeNigris/Living-Library) - A reimagination of what a library can be once freed from a being a physical building housing (only) physical items
- [Small World](https://github.com/seandenigris/SmallWorld) - Project catalog akin to Squeak Map. The idea is that, with one click, you can load your favorite projects in the best way for that particular image (dialect, version, etc.) in that context (development, deployment, etc.). Right now I've just been using it myself for a few years.
- [Computer World](https://github.com/seandenigris/Computer-World) - Bring to life computing objects like applications, servers, etc.
- [Superuser](https://github.com/seandenigris/Superuser) - An attemple to make Unix commands more sane.
- [My People](https://github.com/SeanDeNigris/My-People) - Address Book service, minus the usual application stovepipe, running on GT (Smalltalk)
- [Virtual Stash](https://github.com/SeanDeNigris/Virtual-Stash) - Picture GnuCash, minus the application stovepipe, running on GToolkit (Smalltalk)
- [Tracking Numbers](https://github.com/seandenigris/Tracking-ST) - Tracking numbers, unleashed from an application stovepipe, on GToolkit (Smalltalk)

# Icons
Our GTooklit Home Section uses the following icons from [Noun Project](https://thenounproject.com/browse/icons/term/inventory/):
- Financial Advice Book by Juicy Fish
- Database by Larea
- Library Book by Kmg Design
- Project by WEBTECHOPS LLP
- File by Gilang Kampus
- Bridge by Wan Ikhsan
- inventory by Eucalyp
- Computer Network by Vectors Market
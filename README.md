# Kula
A framework for interfacing with the Netflix Shakti API.

## About
The Kula framework is based off of some of my inital reverse engineering of the Shakti back-end, but it wasn't until I stumbled on the excellent work of [HowardStark](https://github.com/HowardStark/shakti "Howards Shakti Documentation") that I decided to create a framework to interface to this back end.

The documentation on how the API actually functions will largly live on HowardStarks repository, while this repository will focus on creating a simple Swift framework for interaction.

## Notice
All API calls must be made with _valid_ credentials! This means that you _must_ have an active Netflix account for the API endpoints to return data!

We caution you against directly asking for Netflix users for their username and password. The preferred way for you to get credentials is post a WebkitView and navigate it to the Netflix login page. When the user logs in, get the cookie values from the cookie store.

Logging in is going to be a hotly contested item internally on how to enforce it for the safety of the user and is subject to change based on how this framework grows.

## Out of Scope Items
The following items will be considered out of scope for the initial library.

 - Localizatized return results
 - Logging in/Aquiring the required cookies*
 - Webp image files for boxart

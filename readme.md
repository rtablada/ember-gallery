# Ember Gallery

Ember gallery is a simple example artist portfolio CMS built using Ember CLI and Laravel PHP.

The idea is to have a sandbox to play with ideas and strategies to make an easy path and a community example of how to use these two technologies together.


## Reusable Code Refactoring

As many applications have similar components, I hope that this project will give myself and the community the opprotunity to refactor and bulid reusable packages (composer, npm, and bower) to help accomplish some of the pain points that exist in creating authenticated CMS applications (and so on).
Some things I already hope to refactor out of this project as it grows:

- Laravel authentication token package (support for server side time out and multiple user sessions)
- Ember authentication controllers to manage token based auth (changes authentication headers on AJAX requests too)
- Laravel API controllers with configurable Serialization/Normalization (may work with Dingo/API)

## Installation

The Laravel portion of this application is rather simple to get working if you have Vagrant installed, just run:

```
vagrant up
```

You can then access the Laravel API server on your local machine using `192.168.33.10.xip.io`.

The ember side of things is not quite as simple since this project using the active master branch of Ember-CLI (at least it does when I'm writing this).
In another directory run:

```
git clone https://github.com/stefanpenner/ember-cli.git
cd ember-cli
npm link
```

Then come back to this project and run:

```
npm link ember-cli
ember server
```

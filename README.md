## Brooklyn Artwalks API

Back end for Brooklyn Artwalks web app<br>

Deployed front end: https://kiraamaa.github.io/capstone-frontend<br>
Deployed back end: https://blooming-castle-72694.herokuapp.com<br>

Front end repository: https://github.com/kiraamaa/capstone-frontend<br>
Back end repository: https://github.com/kiraamaa/brooklyn-artwalk-backend

## Purpose and Functionality

This is a Rails API that serves artwalks from a collection and allows a user to add artwalks to their favorites. Users can then view, edit, and delete their favorite artwalks. It implements three resources: Users, Favorites, and Artwalks.

## Technologies Used

Ruby, Rails

## API Routes

| Verb   | URI Pattern            | Controller#Action |
|--------|------------------------|-------------------|
| POST   | `/sign-up`             | `users#signup`    |
| POST   | `/sign-in`             | `users#signin`    |
| DELETE | `/sign-out/:id`        | `users#signout`   |
| PATCH  | `/change-password/:id` | `users#changepw`  |
| GET    | `/artwalks`            | `artwalks#index`  |
| POST   | `/favorites`           | `favorites#create` |
| GET    | `/favorites`           | `favorites#index`  |
| PATCH  | `/favorite/:id`        | `favorites#update`  |
| DELETE | `/favorite/:id`        | `favorites#destroy`|

All data returned from API actions is formatted as JSON.

## User Stories

I want to see art walks.<br>
I want to see points of interest on each art walk.<br>
I want to be able to favorite an artwalk.<br>
I want to edit the name of my favorite walk(s).<br>
I want to delete my favorite walk(s).<br>

## Wireframes

![Image of Wireframes](http://i.imgur.com/4k5Wk3M.jpg)

## ERD
![Image of ERD](http://i.imgur.com/VWKDbgo.png)

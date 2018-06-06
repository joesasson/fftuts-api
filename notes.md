# FFtuts Notes

Now the main objectives are to get an api that can hold articles and tags - this is basically done.

I now need to start working on the front end that will display and submit new articles and tags

First set up a basic react app and think about components that I want to build. I have the wireframe.


Wireframes:
[Mobile - Feed](https://wireframe.cc/EkgE7G)
[Mobile - New Article](https://wireframe.cc/Utkeyu)
[Desktop - Feed](https://wireframe.cc/NkvR0h)
[Desktop - New Article](https://wireframe.cc/I6tP4U)



Essentially there are two views. The feed view and the article view.

I want to avoid using any type of framework for styling, but at the same time I want to make sure the site is 100% responsive.

Tags get created in the new article view

Let me just get the feed view set up.

App Components:
- Logo (top right - mobile/ top left - desktop)
- Tiny Menu (top right)
- Subscribe Box (middle right)

Components for feed page:
- Feed (right - mobile / center - desktop)
  - Article
    - Tag
- Sort and Filter Widget (bottom left)


I also need to set up a submission page. Then I'll have the basic outline of the app.

Submission Page Components:
- Form
  - Title Input
  - Link Input
  - Date Input

Gonna go through the react tutorial real quick and see what I can take from it.

Okay I think I am now ready to start writing the front end
The only thing that I'm missing is the styling
I need to do one tutorial on that and that's it. I'm going to be ready
I need to use flex or grid now and see how I can position the elements responsively. That's the most challenging thing right now.
First let me figure out what the issue is with the api. It looks like the routes or controller is not set up right. Let me check the git diff, maybe I put something in that broke it and I didn't realize.

What happened to the application Controller? It just disappeared. Okay that was pretty easy to fix. I don't know what happened there.

Next. Let go through a design tutorial now.

I'm going to first read [this article](https://medium.com/flexbox-and-grids/how-to-efficiently-master-the-css-grid-in-a-jiffy-585d0c213577)

I'm going to use grid, inline styling, and I'm going to use BEM (which might not even be relevant).

I think for positioning I have to use CSS and I can use inline styling for component specific styles.

Grid Notes:

- Grid Container - the highest level of the grid
- Grid Lines - Horizontal and Vertical
- Grid Cell - The smallest unit of area in a grid layout
- Grid Area - Combination of one or more cells (Like a range)
- Grid Track - space between two grid lines
- Grid Item - elements that are direct children of a grid container
- [My Pen for practice](https://codepen.io/dibson/pen/dZEeqr)
- Fractional Unit is interesting - basically, if you specify width of an fr it will automatically calculate how many siblings it's sharing with and adjust itself to fit into 100%
- I'm going to read [this one](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Grid_Layout/Basic_Concepts_of_Grid_Layout) when I have time
- For now I'll just stick to the first article
- Okay so basically treat everything on the page like a nested grid

Okay, I want to start with the Front End
So now I'm getting a cors error in my fetch request
Let me try to change the request to http

5/26

I need to define my goals for this project

- I want to add a cms plugin that will allow to manage the articles that I have on the feed

6/5

- Let's reset this project
- This is not just a project, it's going to be my side business
- With that in mind my goals are very different
- My primary reason to build this is not to learn how to code, but to learn how to make money through coding
- I will be driving to monetize right away
- I don't need to build the next Google, but I need a passive income stream and this is my chance
- So what is the business model?
- The app will be a feed of tutorials, I will make money via referrals and promoted courses that users click on and I will continue to add non-intrusive revenue streams
- The focus will be providing the user with value while realizing a revenue at the same time
- So obviously I need to start in free mode, which means a bunch of work with no profit
- It will be a free service that aggregates tutorials and articles on javascript my first focus is React
- I will try to make it as non-coursy as possible, that means I don't want to have official sites that have paid tutorials. At least not in the beginning
- I can always branch out later when moentization is on the horizon
- And I'm not going to forget about the rev, just push it off until I meet my product objectives
- So again, I want a feed of new tutorials, basically like a twitter feed, but only with on topic tutorials
- At first, I'll manually add them via the frontend, and as time goes on I'll automate the postings
- So that's pretty simple
- I already have the index rendering, I just need to have a way to add articles
- The beauty of this thing is going to be it's simplicity
- It's not going to do anything fancy, just display a list of tutorials

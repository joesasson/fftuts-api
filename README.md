# Fresh Free Tuts

Idea here is that decent relevant tutorials often get lost in the noise and when you find a good one, it's usually old and outdated.

This project aims to aggregate tutorials that meet certain quality criteria and list them in a twitter style feed.

More User based features will be added eventually.

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

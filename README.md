# upday_app

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

# Description

This assignment is a simple application which contains simple
API calling and fetching data into models and repositories.

The architecture is based on Bloc pattern which I preder for
this requirement. I used repository which is responsible for
fetchiing data weather they are on API or socket or database.
Furthermore we have provider which is responsible to get data
that ita repository needs from each service like API or database.
And at the verge of our application we have services to implement
simple functions for the data provider like get and post for API.

Our Bloc that I called it Home Bloc contains some states for
this API calling, the initial state for the first state that
we have and the loading state for when we are fetching data
from API and the success and failure when we got the data.
The events are just for the first API call and othe one for
getting more data for other image pages.

The UI is a simple scrolling widgets and they are not looking
beautiful, since I didn't have designs for this assignment.
However, I have focused on how smooth they are. I used slivers
rather than using simple widgets. Slivers widgets are the widgets
that framework uses in the backend and we can use them for our
needs that we have here.

I could write unit tests for our Bloc and they are four possible
scenarios which are testing initial state and getting first data
and getting more data from API and the last one is the failure one.

Some of my projects that I'm really proud of are in my Github and
you can check them right [here](https://github.com/aliyazdi75).
And one of them that I most like that and I wrote some articles
about that is my [Gallery](https://github.com/aliyazdi75/gallery) project.

I hope you enjoyed this project. 

####Table of Contents
1. [Features](#features)
  a) [MVP features](#MVP)
  b) [Stretch Features](#stretch)
  c) [Nice to Have Features](#nice)
2. [Time Allocation](#time)
3. [Working Agreement](#working)
4. [Team Designations](#team)
5. [Git Rules](#git)

<a name="features"></a>
####Features

<a name="MVP"></a>
#####MVP
1. Simple Log-in/logout
  a) Come to homepage (Lo-Fi mockup)
  b) Find log-in button
  c) Ajax pulls up login form
  d) User fills out login info
    - Database / CRUD application controllers
  e) Login button dissapears and is replaced by logout
2. Register
  f) Generally the same as login
3. Users have a profile
  a) Come to homepage
  b) login or signup
  c) profile/logout instead of login/register
  d) click profile link and takes to new page (leaves homepage)
  e) User on profile page sees profile pictures/name/about/host a new event button.
4. Users can list a new event
  a) User was on profile page and clicked "host a new event" button. AJAX
  b) Show/Date/Time/Description is shown
  -----------------------------------------------------
  Page for specific event
    I) show / time
    II) user photo and user couch photo
    III) guests -> photos and names
5. Guests can search for shows
  a) Go to homepage
  b) Fill out form over video
6. Guest can search by location (bourough)
  a) Fill out form after initial show form is filled out. This form is brought up by AJAX.
  b) Pull up page for search results
7. Guest can request to watch a show with host. They can add a message with their request.
  a) Message and submit with AJAX
8. Hosts & Guests can message each other once a request has been made.
  a) Accept / Decline / Message
9. Hosts can accept or decline request.
  - If accepted and max guests is filled, show is displayed as filled.
10. Inbox in top left always available

- PrivatePub gem for messaging

<a name="stretch"></a>
######Stretch
1. Log-in with Facebook
2. Guests and Hosts should have a calendar with their shows in it.
3. Guests and Hosts can rate and review each other.
4. Email mailers of upcoming shows
5. Input address
6. Pull in show photos from API
  - Possibly use TV MAZE

<a name="nice"></a>
######Nice to have
1. Text reminders of upcoming shows
2. Users favorite shows playing nearby at hosts
3. Next week? Emails both people
4. Autocomplete commonly searched shows

<a name="time"></a>
####Time Allocation for MVP
|Home Page                    | 8 hrs  |
|User CRUD                    | 15 hrs |
|Events CRUD                  | 10 hrs |
|Messaging Feature + Research | 20 hrs |
|Search Feature               | 8 hrs  |
|Integration Time             | 20 hrs |
|Research                     | 15 hrs |

<a name="working"></a>
#####Working Agreement

Patrick 10:30 - 6 Thurs
Liam 10:30 - 6 Thurs
Steven 10:30 - 6 Thurs

Patrick 9 - 6 Fri
Liam 9 - 6 Fri
Steven 9 - 6 Fri

Patrick 10 - 4 Saturday
Liam 10 - 4 Saturday
Steven 10 - 4 Saturday

Patrick 10 - 4 Sunday
Liam 10 - 4 Sunday
Steven 10 -4 Sunday

Break at 12:15 to assess progress each day.


<a name="team"></a>
#####Team Designations

|lead        | Steven  |
|QA          | Patrick |
|DevOps      | Liam    |
|Git Master  | Steven  |
|Designer    | Patrick |
|Developers  | ALL     |


<a name="git"></a>
DO NOT MERGE YOUR OWN BRANCH
Different branch for each feature
Delete branch once it is merged
Make commits for every change

[TV API](http://www.tvmaze.com/api)

<a name="design"></a>
####Design Ideas

[Couch Surfing](https://www.couchsurfing.com/)
[Airbnb](https://www.airbnb.com/)
[Rabbit](https://rabb.it/)
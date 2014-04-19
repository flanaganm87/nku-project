# NKU Project Repo

Collab

- This application will allow users to sign up and either create a new "group" or join an existing one.

- Each group will be private to only it's members. The group members will be able to share inforation, collaberate on
various projects or ideas.

- The only way to join a group is by requesting an invitation code from the creator. How you obtain this code will be up to the user, but they will need it to view the groups page and join in the fun.

- Collab will provide a calendar feature, comment/discussion section, a list of members that are currently present on the site, to enable live chat. 

- A single user account can only be mapped to one group. You will have the option to leave group, instead of deleting the account if you choose to join another.




**For the 4-18 Assignment**

 As a user, I want to be able to create a group so that I can feel a sense of belonging
   
  
Test Steps:
Create a user account, then Create a new group
Verify that the new group page is created, and 
with the appropriate Title


----

As a user, I want to be able to join someone elses group, to network and find a new friend


Test Steps:
Sign in as a user, then select the Join a Group link
in the Navigation, then select "join" on a specific group
The user should be directed to the groups home page, with a
welcome message
    
----

As a user, I want to be able to have a discussion board with other group members

Test Steps:
As a group member, post a comment into the discussion board,
then as a 2nd user, log on and navigate to the group page,
and see if the post is visible. You should see other group 
members Posts on the page.


----

As an administrator, I don't want anyone accessing any pages unless they are signed in.


Test Steps:

Try to manually navigate to known URL's on the website without 
a current logged in session.
The user should constantly be redirected to the Sign In page if they
are using the nav links or are entering URLS.


----

As a Group Admin User, I want to be able to edit my Group's name if I wish so,
but I do not want anyone else to be able to edit the information.

Test Steps:

Log in as the administrator of a group, and go to group lists and click on 
the edit link, make an update then submit. Now check the list for an updated group name.
As a non admin, try to access the edit view of someone elses group. The user should be
denied access.

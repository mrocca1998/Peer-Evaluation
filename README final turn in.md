# 5g-final-beta

#Instructions to access application

#Project Extensions:

#Improvements:
-Made application more secure by removing admin checkbox from sign-in/edit profile pages. Instead one admin is created by seeding the db. A new admin can only be created by another admin from the admin student managing dashboard.

-All users made by an admin are given a default password "default." Upon login for the first time, these users are redirected to the edit profile page. This allows them to provide a new, secure password as well as edit any personal infor such as the name they go by

-fixed bug with duplicate membership and assignment entries as well as failure to cascade these objects when their dependencies are deleted

-Admins can now add/edit grades for students per project, and those grades will be displayed in the student view once they are submitted.

-Added a due date for each project. The peer review form for each student will disappear after the due date, and it will say that the review submission is overdue.

-Improved styling to make the application more interesting.

-labeled the inputs for the peer review (added "score" after each name).

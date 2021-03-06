#Instructions
1. Clone the repo and go into the peer_eval directory
2. Enter command 'bundle install' to in stall all dependencies
3. Enter commands 'rake db:create' and 'rake db:migrate' to create the database and run all existing migrations
4. Enter 'rails s' to start the rails server. It will run on localhost port 3000.
5. Go to localhost:3000/students/sign_up and hit sign up to create an account. Then log in and you will be directed to a landing page based on whether you are an admin or student

Features
A user is able to submit scores for eaach of their teammates and one comment per project. When the student logs in, they will be redirected to a page that lists all the groups they are in. When the student clicks on a group, it will display all the projects for that group. If they click on a project, a form will appear where they can give each teammate a score, and leave any overall comments.

The admin has three pages linked in the admin header, students, groups, and projects, that they can use to populate the class, form groups, and assign projects to group. As mentioned in the extension below, we implemented many-to-many relationships between students-to-groups and groups-to-projects.

The student page lists all students information such an name, email, and admin status. When adding a new student, the admin uses checkboxes to select all the groups the student will be a member of. Validations prevent an admin from being a member of any groups. When adding a student via the students page, the password will be set to "default". This can be changed by the student later using the devise implementation detailed in requirements 4. 

The groups page lists all current groups. Any group can be selected to see details on it's current members and projects it's assigned to. When creating a new group or editing a current group, there will be two separate set of checklists. One is a list of students to add to the group and the other is a list of projects to assign to the group.

Lastly, the projecs page lists all current projects. Any project can be selected to show the groups currently assigned to the project. The new project and edit project pages provide a checklist of all groups that are/can be assigned to the project.

The scores page available to admins has collapsible sections for each group, each project per group, and each student per project. For each student it displays the students peer review for the project including comments and scores for other students, as well their average score given by everyone in the group.

The authentication part of our project was accomplished by using the devise gem. Through using this gem and integrating it with the student table we had designed, we are able to prompt the user to signup with their name, email and password. After this account creation, the changes are saved and another individual cannot reuse an email thats already in use and the password is stored to allow for future logins. Without a valid email and corresponding password, an individual cannot login. 

By using join tables "memberships" and "assignments," we implemented a many to many relationship between students-to-groups and groups-to-projects respectively. 

This allows for support of multiple group structures. An admin can assign a student to multiple groups. In the form and editing pages for students, a checklist of all groups exists. Select whichever groups you wish the student to be a member of. 

The many to many relationship between groups and projects allows the admin to create just one entry for a project and assign it to multiple groups. In the project and group forms, there will be a checklist of all existing groups and projects respectively to assign  project(s) to group(s).

Made application more secure by removing admin checkbox from sign-in/edit profile pages. Instead one admin is created by seeding the db. A new admin can only be created by another admin from the admin student managing dashboard.

All users made by an admin are given a default password "default." Upon login for the first time, these users are redirected to the edit profile page. This allows them to provide a new, secure password as well as edit any personal infor such as the name they go by

Admins can now add/edit grades for students per project, and those grades will be displayed in the student view once they are submitted.

Added a due date for each project. The peer review form for each student will disappear after the due date, and it will say that the review submission is overdue.

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Student.create(fname: "John", lname: "Deus", email: "god@gmail.com", isAdmin: true, password: "secret", count: 1)

=begin
Group.create([{ id: 1, name: 'Group1' }, { id: 2, name: 'Group2' }])

Project.create([{ id: 1, title: 'Group 1 Project' }, { id: 2, title: 'Group 2 Project' }, {id: 3, title: "Group 1+2 Project"}])

Student.create([{id: 1, fname: "Group1", lname: "A", email: "example1@example.com", password: "123456" }, {id: 2, fname: "Group1", lname: "B", email: "example2@example.com", password: "123456"}, {id: 3, fname: "Group2", lname: "A", email: "example3@example.com", password: "123456"},
                {id: 4, fname: "Group2", lname: "B", email: "example4@example.com", password: "123456" }])

Membership.create([{ student_id: 1, group_id: 1 }, { student_id: 2, group_id: 1}, { student_id: 3, group_id: 2}, { student_id: 4, group_id: 2}])

Assignment.create([{ group_id: 1, project_id: 1}, { group_id: 2, project_id: 2}, { group_id: 1, project_id: 3}, { group_id: 2, project_id: 3}])

Review.create([{ id: 1, group_id: 1, project_id: 1, student_id:1, comment:"Group1 A Project 1 Review"},
              { id: 2, group_id: 1, project_id: 1, student_id:2, comment:"Group1 B Project 1 Review"},
               { id: 3, group_id: 1, project_id: 3, student_id:1, comment:"Group1 A Project 1+2 Review"},
               { id: 4, group_id: 1, project_id: 3, student_id:2, comment:"Group1 B Project 1+2 Review"},
               { id: 5, group_id: 2, project_id: 2, student_id:3, comment:"Group2 A Project 2 Review"},
               { id: 6, group_id: 2, project_id: 2, student_id:4, comment:"Group2 B Project 2 Review"},
               { id: 7, group_id: 2, project_id: 3, student_id:3, comment:"Group2 A Project 1+2 Review"}])

Score.create([{id: 1, review_id: 1, author_id: 1, recipient_id: 1, rating: 5},
              {id: 2, review_id: 1, author_id: 1, recipient_id: 2, rating: 1},
              {id: 3, review_id: 2, author_id: 2, recipient_id: 1, rating: 1},
              {id: 4, review_id: 2, author_id: 2, recipient_id: 2, rating: 5},
              {id: 5, review_id: 3, author_id: 1, recipient_id: 1, rating: 5},
              {id: 6, review_id: 3, author_id: 1, recipient_id: 2, rating: 1},
              {id: 7, review_id: 4, author_id: 2, recipient_id: 1, rating: 1},
              {id: 8, review_id: 4, author_id: 2, recipient_id: 2, rating: 5},
              {id: 9, review_id: 5, author_id: 3, recipient_id: 3, rating: 5},
              {id: 10, review_id: 5, author_id: 3, recipient_id: 4, rating: 1},
              {id: 11, review_id: 6, author_id: 4, recipient_id: 3, rating: 1},
              {id: 12, review_id: 6, author_id: 4, recipient_id: 4, rating: 5},
              {id: 13, review_id: 7, author_id: 3, recipient_id: 3, rating: 5},
              {id: 14, review_id: 7, author_id: 3, recipient_id: 4, rating: 1}
             ])
=end
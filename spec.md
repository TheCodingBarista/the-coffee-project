# Specifications for the Sinatra Assessment

Specs:
- [x] Use Sinatra to build the app
- [x] Use ActiveRecord for storing information in a database
- [x] Include more than one model class (e.g. User, Post, Category)
    Models: User, Store, Item
- [x] Include at least one has_many relationship on your User model (e.g. User has_many Posts)
    User(has_many items), Store(has_many users, has_many items), Item(has_many users through store)
- [x] Include at least one belongs_to relationship on another model (e.g. Post belongs_to User)
    Item(belongs_to store), User(belongs_to store)
- [x] Include user accounts with unique login attribute (username or email)
    Uses validates_uniqueness_of macro on username
- [x] Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying
    These actions are handled through inventory section
- [x] Ensure that users can't modify content created by other users
    Users only have access to their own store's inventory, only admins of a store can delete and create items
- [x] Include user input validations
    All fields must be filled in when adding a user or a new item
- [ ] BONUS - not required - Display validation failures to user with error message (example form URL e.g. /posts/new)
- [ ] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code

Confirm
- [x] You have a large number of small Git commits
- [x] Your commit messages are meaningful
- [x] You made the changes in a commit that relate to the commit message
- [x] You don't include changes in a commit that aren't related to the commit message

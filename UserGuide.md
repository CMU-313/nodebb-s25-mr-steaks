# User Guide

## 1) Resolved/Unresolved Button in Topic Toolbar
### How to use
**To mark a topic as resolved**:
1) Navigate to a specific topic page
2) In the topic toolbar, to the left of the 'Not Watching' drop down, press the Unresolved button to access the drop down menu
3) Select Resolved to mark a topic as completed or Unresolved to mark a topic as incomplete
4) The dropdown will update to reflect this change in status
### User testing
**Steps**:
1) Start with a topic as Unresolved
2) Use the drop down to change the topic status to Resolved
3) Navigate to another page such as 'Categories'
4) Return to the original topic page to ensure the topic status persists as Resolved
### Automated testing
**Location**:<br> 
Automated tests for Resolved/Unresolved button located in tests/topic.js. Test suite name: 'resolved and unresolved topics'<br>
**Description**:<br> 
This new test suite checks that the initial state of a new post is set to Unresolved. It also tests that the Resolved and Unresolved states are being set correctly in the database and retrieved correctly from it.
While users can test that the button UI visually reflects the stored database state, the automated tests should be sufficient to ensure that the resolved status in the database is being properly updated and that the state is being preserved. We test retrieving the resolved state immediately after setting it to ensure that the state persists.

## 2) Same Question Counter Button in Topic Toolbar
### How to use
**Steps**:
1) Navigate to a topic page that you haven't visited before
2) In the topic toolbar, to the right of the 'Mark unread' button, press the Same Question button to indicate that you had a similar question to the post
3) The counter next to the button should increase by 1 to reflect this
### User testing
**Steps**:<br>
Checking that you cannot vote twice:
1) Navigate to a topic page for which you have selected the 'Same Question' button for before
2) Note the count next to the Same Question button
3) Press the Same Question button
4) Ensure that the count does not increase from step 2, since you've marked Same Question in the past

Checking that the button works:
1) Follow the 'How to Use' steps above to indicate that you have the Same Question
2) Navigate to another page such as 'Categories'
3) Return to the original topic page to ensure that the Same Question count persists (is the same as the count before you navigated away) 
### Automated testing
**Location**:<br> 
Automated tests for Same Question button located in tests/topic.js. Test suite name: 'same question topics'<br>
**Description**:<br>
This new test suite checks that the count is initialized to 0, clicking the button increases the count by one, multiple users can increase the count, and one user cannot continually increase the count. We test the multiple users functionality by creating two test users, having the second user increase the count and seeing if the increase is reflected for the first user.
While users can test that the button UI visually reflects the stored database count, the automated tests should be sufficient because we need to ensure that the same question count in the database is being properly updated and that the state is being preserved.

## 3) Anonymous Posting
### How to use
**Steps**:
1) Navigate to a category page 
2) Click on the New Topic button, the post editor button should appear
3) To make the topic anonymous, click on the "Post as Anonymous" button; if you decide for the topic to not be anonymous, click on the "Post with Name" button
4) Add content to your post and click the Submit button
5) The display name should reflect your decision in 3)
### User testing
**Steps**:
Checking that you can post anonymously:
1) Click on the "Post as Anonymous" button and then create the post
2) Check that the display name for the topic is "Anonymous" and is not hyperlinked as opposed to your username
3) Navigate back to the corresponding Categories page of the topic
4) Check that there is no profile picture for the post and that the display name is Anonymous when hovered over
5) Logout and see that the Anonymous display name still persists for the topic

Checking that you can still post with your name: 
1) Do not click on the "Post as Anonymous" button and then create the post
2) Check that the display name for the topic is your username and hyperlinked to your profile page
3) Navigate back to the corresponding Categories page of the topic
4) Check that there is a profile picture for the post and that the display name is your username when hovered over
5) Logout and see that your username still persists for the topic

### Automated testing
**Location**:<br> 
Automated tests for anonymous posting located in tests/topic.js. Test suite name: 'Anonymous Posting'

**Description**:<br>
This new test suite first makes sure that a user can choose to post anonymously and can successfully create a topic. Then, we test to make sure thatm for that topic, the username is "Anonymous" and the profile picture is blank as intended. Tests then ensure that this anonymous field is actually a boolean, changing it between true and false to make sure that the behavior is as intended. We make sure that their uid for the topic is set to 0, indicating an anonymous topic post, and finally make sure that their actual user data does not get modified, anonymous or not. 

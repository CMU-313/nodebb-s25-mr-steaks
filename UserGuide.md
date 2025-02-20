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
Automated tests for Resolved/Unresolved button located in tests/topic.js. Test suite name: 'resolved and unresolved topics'
**Description**:<br> 
This new test suite checks that the initial state of a new post is set to Unresolved. It also tests that the Resolved and Unresolved states are being set correctly in the database and retrieved correctly from it.
While users can test that the button UI visually reflects the stored database state, the automated tests should be sufficient to ensure that the resolved status in the database is being properly updated and that the state is being preserved. We test retrieving the resolved state immediately after setting it to ensure that the state persists.

## 1) Same Question Counter Button in Topic Toolbar
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
Automated tests for Same Question button located in tests/topic.js. Test suite name: 'same question topics'
**Description**:<br>
This new test suite checks that the count is initialized to 0, clicking the button increases the count by one, multiple users can increase the count, and one user cannot continually increase the count. We test the multiple users functionality by creating two test users, having the second user increase the count and seeing if the increase is reflected for the first user.
While users can test that the button UI visually reflects the stored database count, the automated tests should be sufficient because we need to ensure that the same question count in the database is being properly updated and that the state is being preserved.
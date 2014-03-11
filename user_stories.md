User Stories "Client Tracker Rails"
=============
<h3>User Stories</h3>

<h5>
    As a Freelance Webdeveloper<br>
    I want to observe a list of all of my clients along with their phone numbers and the date created for each client<br>
    In Order to easily and quickly have access to their numbers and be able to be reminded
    for which day they were created.
<h5>

<h6>
    Usage: ./ClientTrackerRails stats || index.html
</h6>

<h6>Acceptance Criteria:<br>
    <ul>
        <li>A list of clients, their date created, along with their numbers are printed</li>
        <li>A button labeled "view" will reveal details for only that client</li>
        <li> The user can only add numbers by going to client view page and clicking add button</li>
        <li>Edit and delete buttons will be shown if user wants to edit or delete client</li>
    </ul>
</h6>

<h5>
    As a Freelance Webdeveloper<br>
    I want to be able to view a list of all task I created<br>
    In Order for me to keep up with which tasks are important for each client.
<h5>

<h6>
    Usage: ./ClientTrackerRails stats || tasks.html
</h6>

<h6>Acceptance Criteria:<br>
    <ul>
        <li>A list of Clients,tasks, and date created will print out</li>
        <li>A view button will be to the left of each task to see a task list only for that 1 client</li>
        <li> The user can only add tasks by going to client view page and clicking add button</li>
         <li>Edit and delete buttons will be shown if user wants to edit or delete task</li>
    </ul>
</h6>

<h5>
    As a Freelance Webdeveloper<br>
    I want to view a list of all the clients and their appointments<br>
    In Order for me to make sure that I'm never late to appoinments and I'm never behind on schedule
<h5>

<h6>
    Usage: ./ClientTrackerRails stats || schedule.html
</h6>

<h6>Acceptance Criteria:<br>
    <ul>
        <li> A list of clients along with the correct appointment date, time, and notes are printed</li>
        <li> If client has more than one appointment, it will be hidden until the user clicks the view button for paticular client </li>
        <li> The user can only add appointments by going to client view page and clicking add button</li>
         <li>Edit and delete buttons will be shown if user wants to edit or delete appoinments</li>
    </ul>
</h6>


<h5>
    As a Freelance Webdeveloper<br>
    I want to view a list of all the clients and their bills <br>
    In Order for me to know if they paid on 1 flat fee, weekly, or monthly
<h5>

<h6>
    Usage: ./ClientTrackerRails stats || finance.html
</h6>

<h6>Acceptance Criteria:<br>
    <ul>
        <li> A list of clients along with the correct date, payment types, and details are printed</li>
        <li> If client has a weekly, monthly, or yearly payment type, the user can click view and observe list of payment history </li>
        <li> The user can only add finances by going to client view page and clicking add button</li>
         <li>Edit and delete buttons will be shown if user wants to edit or delete finances</li>
    </ul>
</h6>

<h5>
    As a Freelance Webdeveloper<br>
    I want to be able to input my client's name, appointment, task, and finance for client<br>
    In Order for me to be able to keep my business organized and so that I can stay up to date
<h5>

<h6>
    Usage: ./ClientTrackerRails stats || index.html
</h6>

<h6>Acceptance Criteria:<br>
    <ul>
        <li>A way for user to input their own data (client, appointment, task, and finance for each client)</li>
        <li>Once data is inputed this data will be added to the The Client List</li>
    </ul>
</h6>
<h5>
    As a Freelance Webdeveloper<br>
    I want to be able to update or delete my clients, appointments,tasks, and finance when necessary<br>
    In Order to not get confused on which clients are new and which client projects are done.
<h5>

<h6>
    Usage: ./ClientTrackerRails stats || index.html<br>
    Usage: ./ClientTrackerRails stats || tasks.html<br>
    Usage: ./ClientTrackerRails stats || schedule.html<br>
    Usage: ./ClientTrackerRails stats || finance.html
</h6>

<h6>Acceptance Criteria:<br>
    <ul>
        <li>The client's task, appointment dates, and finances can be updated or deleted by user</li>
        <li>The user can update a task, appointment date, or finance already created</li>
        <li>The user can easily click the button update, or delete which is located at the end line of each client</li>
    </ul>
</h6>

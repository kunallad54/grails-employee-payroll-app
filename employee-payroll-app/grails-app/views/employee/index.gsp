<%--
  Created by IntelliJ IDEA.
  User: Kunal
  Date: 14-09-2021
  Time: 11:40
--%>

<!-- Include Main Layout -->
<meta name="layout" content="main"/>

<header class="header-content header">
    <div class="logo-content">
        <g:img dir="../assets/logo/"
               file="logo.png" alt="Logo Image" height="50"/>
        <div class="logo-text-content">
            <span class="emp-text">EMPLOYEE</span>
            <span class="emp-text emp-payroll">PAYROLL</span>
        </div>
    </div>
</header>

<div class="main-content">
    <div class="header-content">
        <div class="emp-detail-text">
            Employee Details
            <div class="emp-count">10</div>
        </div>
        <g:link controller="employee" action="create" class="add-button">
            <g:img dir="../assets/icons/" file="add-24px.svg" alt=""/>
            <g:message code="Add User"/>
        </g:link>
    </div>

    <div class="table-main">
        <table id="table-display" class="table">

            <tr>
                <!-- Table Headers -->
                <th></th>
                <th>Name</th>
                <th>Gender</th>
                <th>Department</th>
                <th>Salary</th>
                <th>Start Date</th>
                <th>Actions</th>
            </tr>
            <!-- Employee Details in Table Rows -->
            <tr>
                <td>
                    <g:img class="profile" dir="../assets/profile-images/" file="Ellipse%20-2.png" alt="Profile"/>
                </td>
                <td>Krunal Lad</td>
                <td>Male</td>
                <td><div class="dept-label">HR</div><div class="dept-label">Engineer</div></td>
                <td>&#8377; 1200000</td>
                <td>21 Aug 2020</td>
                <!--To update and delete an employee from the database-->
                <td>
                    <g:img (click)="remove(employee.id)" dir="../assets/icons/"
                           file="delete-black-18dp.svg" alt="delete" />
                    <g:img (click)="update(employee)" dir="../assets/icons/"
                           file="create-black-18dp.svg" alt="edit" />
                </td>
            </tr>

        </table>
    </div>
</div>

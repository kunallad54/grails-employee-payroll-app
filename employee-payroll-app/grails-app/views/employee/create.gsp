<%--
  Created by IntelliJ IDEA.
  User: Kunal
  Date: 14-09-2021
  Time: 12:55
--%>

%{--<%@ page contentType="text/html;charset=UTF-8" %>--}%
%{--<html>--}%
%{--<head>--}%
%{--    <title></title>--}%
%{--</head>--}%

%{--<body>--}%
%{--<h1>Hello World</h1>--}%
%{--</body>--}%
%{--</html>--}%

%{--Include Main Layout--}%
<meta name="layout" content="main"/>

<header class="header-content header">
    <div class="logo-content">
        <g:img dir="../assets/logo/"
               file="logo.png" alt="Logo Image" height="50"/>
        %{--        <img src="../assets/logo/logo.png" alt="Logo Image">--}%

        <div class="logo-text-content">
            <span class="emp-text">EMPLOYEE</span>
            <span class="emp-text emp-payroll">PAYROLL</span>
        </div>
    </div>
</header>

<div class="form-content">
    <!--UC 2-->
    <g:form class="form" controller="employee" action="create" method="POST">
%{--    <form class="form" action="#" onreset="resetForm()" >--}%
        <div class="form-head">
            Employee Payroll Form
        </div>
        <div class="row-content">
            <label class="label text" for="name">Name</label>
            <g:textField class="input" name="name" value="${myValue}" placeholder="Enter your name" required="" />
%{--            <input class="input" type="text" id="name" name="empName" placeholder="Enter your name" required>--}%
            <!--UC 10-->
            <!-- <error-output class="text-error" for="text"></error-output> -->
        </div>
        <!--UC 3-->
        <div class="row-content">
            <label class="label text"  >Profile Image</label>
            <div class="profile-radio-content">
                <label>
                    <g:radio id="profile1" name="profilePic" value="../assets/profile-images/Ellipse -3.png" />
%{--                    <input type="radio" id="profile1" name="empProfilePic" value="../assets/profile-images/Ellipse -3.png" >--}%
                    <g:img  class="profile" id="image1" dir="../assets/profile-images" file="Ellipse -3.png"/>
%{--                    <img class="profile" id="image1" src="../assets/profile-images/Ellipse -3.png">--}%
                </label>
                <label>
                    <g:radio id="profile2" name="profilePic" value="../assets/profile-images/Ellipse 1.png" />
%{--                    <input type="radio" id="profile2" name="empProfilePic" value="../assets/profile-images/Ellipse 1.png" >--}%
                    <g:img  class="profile" id="image2" dir="../assets/profile-images" file="Ellipse 1.png"/>
%{--                    <img class="profile" id="image2" src="../assets/profile-images/Ellipse 1.png">--}%
                </label>
                <label>
                    <g:radio id="profile3" name="profilePic" value="../assets/profile-images/Ellipse -8.png" />
%{--                    <input type="radio" id="profile3" name="empProfilePic" value="../assets/profile-images/Ellipse -8.png" >--}%
                    <g:img  class="profile" id="image3" dir="../assets/profile-images" file="Ellipse -8.png"/>
%{--                    <img class="profile" id="image3" src="../assets/profile-images/Ellipse -8.png">--}%
                </label>
                <label>
                    <g:radio id="profile4" name="profilePic" value="../assets/profile-images/Ellipse -7.png" />
%{--                    <input type="radio" id="profile4" name="empProfilePic" value="../assets/profile-images/Ellipse -7.png">--}%
                    <g:img  class="profile" id="image4" dir="../assets/profile-images" file="Ellipse -7.png"/>
%{--                    <img class="profile" id="image4" src="../assets/profile-images/Ellipse -7.png">--}%
                </label>
            </div>
        </div>
        <!--UC 4-->
        <div class="row-content">
            <label class="label text" >Gender</label>
            <div>
                <g:radio id="male" name="gender" value="male" />
%{--                <input type="radio" id="male" name="empGender" value="male"  >--}%
                <label class="text" for="male">Male</label>
                <g:radio id="female" name="gender" value="female" />
%{--                <input type="radio" id="female" name="empGender" value="female"  >--}%
                <label class="text" for="female">Female</label>
            </div>
        </div>
        <div class="row-content">
            <label class="label text"  >Department</label>
            <div>
                <g:checkBox class="checkbox" id="hr" name="department" value="${false}" />
%{--                <input class="checkbox" type="checkbox" id="hr" name="empDepartment" value="HR"  >--}%
                <label class="text" for="hr">HR</label>
                <g:checkBox class="checkbox" id="sales" name="department" value="${false}" />
%{--                <input class="checkbox" type="checkbox" id="sales" name="empDepartment" value="Sales"   >--}%
                <label class="text" for="sales">Sales</label>
                <g:checkBox class="checkbox" id="finance" name="department" value="${false}" />
%{--                <input class="checkbox" type="checkbox" id="finance" name="empDepartment" value="Finance" >--}%
                <label class="text" for="finance">Finance</label>
                <g:checkBox class="checkbox" id="engineer" name="department" value="${false}" />
%{--                <input class="checkbox" type="checkbox" id="engineer" name="empDepartment" value="Engineer" >--}%
                <label class="text" for="engineer">Engineer</label>
                <g:checkBox class="checkbox" id="others" name="department" value="${false}" />
%{--                <input class="checkbox" type="checkbox" id="others" name="empDepartment" value="Others"  >--}%
                <label class="text" for="others">Others</label>
            </div>
        </div>
        <div class="row-content">
            <label class="label text" >Choose Your Salary</label>
%{--            <mat-slider thumbLabel [displayWith]="formatLabel" tickInterval="1000" step="1000" min="0" max="100000"--}%
%{--                        aria-label="units"></mat-slider>--}%
            <input class="input" type="range" name="salary" id="salary" min="300000" max="5000000" step="100" value="4000000" required>
            <output class="salary-output" for="salary">4000000</output>
        </div>
        <!--Date Picker-->
%{--        <div class="row-content">--}%
%{--            <label class="label text" >Start Date</label>--}%
%{--            <g:datePicker name="myDate" value="${new Date()}"--}%
%{--                          precision="day" years="${2021..1960}" noSelection="['':'Choose']"/>--}%
%{--        </div>--}%
        <div class="row-content">
            <label class="label text" >Start Date</label>
            <div id="date">
                <g:select id="day" name="date.day" from="${1..31}" value="${day}"
                          noSelection="['':'Day']"/>
%{--                <select id="day" name="Day">--}%
%{--                    <option value="Day">Day</option>--}%
%{--                    <option value='01'>01</option>--}%
%{--                    <option value='02'>02</option>--}%
%{--                    <option value='03'>03</option>--}%
%{--                    <option value='04'>04</option>--}%
%{--                    <option value='05'>05</option>--}%
%{--                    <option value='06'>06</option>--}%
%{--                    <option value='07'>07</option>--}%
%{--                    <option value='08'>08</option>--}%
%{--                    <option value='09'>09</option>--}%
%{--                    <option value='10'>10</option>--}%
%{--                    <option value='11'>11</option>--}%
%{--                    <option value='12'>12</option>--}%
%{--                    <option value='13'>13</option>--}%
%{--                    <option value='14'>14</option>--}%
%{--                    <option value='15'>15</option>--}%
%{--                    <option value='16'>16</option>--}%
%{--                    <option value='17'>17</option>--}%
%{--                    <option value='18'>18</option>--}%
%{--                    <option value='19'>19</option>--}%
%{--                    <option value='20'>20</option>--}%
%{--                    <option value='21'>21</option>--}%
%{--                    <option value='22'>22</option>--}%
%{--                    <option value='23'>23</option>--}%
%{--                    <option value='24'>24</option>--}%
%{--                    <option value='25'>25</option>--}%
%{--                    <option value='26'>26</option>--}%
%{--                    <option value='27'>27</option>--}%
%{--                    <option value='28'>28</option>--}%
%{--                    <option value='29'>29</option>--}%
%{--                    <option value='30'>30</option>--}%
%{--                    <option value='31'>31</option>--}%
%{--                </select>--}%
                <g:select id="month" name="month.category" from="${['Jan', 'Fb', 'Mr',"Ap","May","Jn","Jl","Ag","Sp","Oc","Nv","Dc"]}"
                          valueMessagePrefix="month.category" noSelection="['':'Month']" />
%{--                <select id="month" name="Month">--}%
%{--                    <option value="Month">Month</option>--}%
%{--                    <option value='01'>January</option>--}%
%{--                    <option value='02'>February</option>--}%
%{--                    <option value='03'>March</option>--}%
%{--                    <option value='04'>April</option>--}%
%{--                    <option value='05'>May</option>--}%
%{--                    <option value='06'>June</option>--}%
%{--                    <option value='07'>July</option>--}%
%{--                    <option value='08'>August</option>--}%
%{--                    <option value='09'>September</option>--}%
%{--                    <option value='10'>October</option>--}%
%{--                    <option value='11'>November</option>--}%
%{--                    <option value='12'>December</option>--}%
%{--                </select>--}%
                <g:select id="year" name="date.year" from="${2021..1960}" value="${year}"
                          noSelection="['':'Year']"/>
%{--                <select id="year" name="Year">--}%
%{--                    <option value="Year">Year</option>--}%
%{--                    <option value='2021'>2021</option>--}%
%{--                    <option value='2020'>2020</option>--}%
%{--                    <option value='2019'>2019</option>--}%
%{--                    <option value='2018'>2018</option>--}%
%{--                    <option value='2017'>2017</option>--}%
%{--                    <option value='2016'>2016</option>--}%
%{--                </select>--}%
            </div>
            <!--UC 10-->
            <!-- <error-output class="date-error" for="text"></error-output> -->
        </div>
        <!--UC 6-->
        <div class="row-content">
            <label class="label text" for="notes">Notes</label>
            <textarea id="notes" class="input" name="Notes" style="height:100px;" ></textarea>
        </div>
        <div class="buttonParent">
            <g:link controller="employee" action="index" class="resetButton button cancelButton" value="${g.message(code: "Cancel")}"><g:message code="Cancel"/></g:link>
%{--            <a class="resetButton button cancelButton">Cancel</a>--}%
            <div class="submit-reset">
                <g:submitButton class="button submitButton" name="save" value="${g.message(code: "Submit")}"/>
%{--                <button type="submit" class="button submitButton" id="submitButton">Submit</button>--}%

                <button type="reset" class="resetButton button" id="resetButton">Reset</button>
            </div>
        </div>
    </g:form>
%{--    </form>--}%
</div>
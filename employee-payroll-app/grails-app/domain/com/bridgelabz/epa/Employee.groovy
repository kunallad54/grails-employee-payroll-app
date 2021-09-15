/**
 * Purpose : To create a model of Employee and apply constraints on model
 *
 * @author Krunal Lad
 * @since 14-09-2021
 */
package com.bridgelabz.epa


import java.time.LocalDate

class Employee {

    Integer id
    String name
    String gender
    String profilePic
    List<String> department = ["HR", "Sales", "Finance", "Engineer", "Others"]
    Integer salary
    LocalDate startDate
    String notes

    static constraints = {
        id(unique: true, blank: false)
        name(blank: false, size: 4..40, nullable: true)
        gender(blank: false, nullable: true)
        profilePic(nullable: true)
        department(nullable : true)
        salary(min: 10000, blank: false, nullable: true)
        startDate(nullable: true)
        notes(nullable: true)
    }

    @Override
    String toString() {
        return super.toString()
    }
}

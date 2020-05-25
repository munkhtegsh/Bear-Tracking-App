/**
 * Created by mmunkhba on 5/17/20.
 */

import {LightningElement, track} from 'lwc';

export default class EmployeeInfo extends LightningElement {
    @track name;
    @track age;
    @track salary;
    @track show = true;

    nameHandler(e) {
        this.name = e.target.value;
    }

    ageHandler(e) {
        this.age = e.target.value;
    }

    salaryHandler(e) {
        this.salary = e.target.value;
    }
    saveButtonHandler(e) {
        this.show = !this.show;
    }

}
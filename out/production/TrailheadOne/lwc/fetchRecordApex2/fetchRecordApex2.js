/**
 * Created by mmunkhba on 5/20/20.
 */

import {LightningElement, wire} from 'lwc';
import getNumOfContacts from '@salesforce/apex/ContactManager.getNumOfContacts';


export default class FetchRecordApex2 extends LightningElement {
    contacts;
    numberOfRecords;

    get responseReceived() {
        if(this.contacts) {
            return true;
        }

        return false;
    }

    inputHandler(e) {
        this.numberOfRecords = e.target.value;

    }

    getContacts() {
        getNumOfContacts({numberOfRecords:this.numberOfRecords}).then(response => {
            this.contacts = response;
        }).catch(e => {
            console.log(e.body.message);
        });
    }
}
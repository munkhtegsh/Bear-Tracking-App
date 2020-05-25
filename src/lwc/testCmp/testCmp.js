/**
 * Created by mmunkhba on 5/21/20.
 */

import {LightningElement} from 'lwc';
import getPBSleads from '@salesforce/apex/CommonLeadFields.getPBSleads';

export default class TestCmp extends LightningElement {
    leadName;
    pbsLeads;

    handleChange(e) {
        this.leadName = e.target.value;
        console.log('Input: ' + this.leadName);
        this.getPBSlLeads(this.leadName);
    }

    getPBSlLeads(leadName) {
        console.log('InputPUBS: ' + this.leadName);
        getPBSleads({leadName}).then(response => {
            console.log(JSON.stringify(response));
            this.pbsLeads = response;
        }).catch(error => {
            console.log('Error ' + error.body.message);
        });
    }
}
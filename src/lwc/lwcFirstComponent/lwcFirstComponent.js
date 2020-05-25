/**
 * Created by mmunkhba on 5/17/20.
 */

import {LightningElement, track} from 'lwc';

export default class LwcFirstComponent extends LightningElement {
    @track greeting = 'World';
    changeHandler(event) {
       var val = event.target.value;
       this.greeting = val;
    }

};

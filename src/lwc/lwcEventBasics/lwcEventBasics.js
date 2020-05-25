/**
 * Created by mmunkhba on 5/17/20.
 */

import {LightningElement} from 'lwc';

export default class LwcEventBasics extends LightningElement {
    handleEvent(event) {
        var message = 'hi';
        var val = event.target.value;
        message = val;
    }
}
/**
 * Created by mmunkhba on 5/18/20.
 */

import {LightningElement, wire} from 'lwc';
import {CurrentPageReference} from 'lightning/navigation';
import {registerListener, unregisterAllListeners} from 'c/pubsub';

export default class CanvasSubscriber extends LightningElement {
    color;
    @wire(CurrentPageReference) pageRef;

    connectedCallback() {
        registerListener('changedColor', this.handleChangeColor, this);
    }

    disconnectedCallback() {
       unregisterAllListeners(this);
    }

    handleChangeColor(colorCode) {
        console.log("Color ---> " + colorCode);
        this.color = colorCode;
    }

    get colorStyle() {
        return 'background-color:' + this.color;
    }

}
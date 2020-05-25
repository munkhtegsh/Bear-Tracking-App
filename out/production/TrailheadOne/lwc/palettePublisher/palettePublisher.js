/**
 * Created by mmunkhba on 5/18/20.
 */

import {LightningElement, wire} from 'lwc';
import {CurrentPageReference} from 'lightning/navigation';
import {fireEvent} from 'c/pubsub';


export default class PalettePublisher extends LightningElement {
   color;
   @wire(CurrentPageReference) pageRef;
   colorCodeOptions = [
      {label: "Green", value: "green"},
      {label: "Red", value: "red"},
      {label: "Yallow", value: "yellow"},
      {label: "Blue", value: "blue"},
   ];

   changeColor(e) {
      this.color = e.target.value;
   }

   handleChangeColor() {
      console.log("color --> " + this.color);
      fireEvent(this.pageRef, "changedColor", this.color);

   }

}
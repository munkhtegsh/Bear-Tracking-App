/**
 * Created by mmunkhba on 5/17/20.
 */

import {LightningElement} from 'lwc';

export default class HelloForEach extends LightningElement {
    contacts = [
        {id: 1,
         name: 'Amy Taylor',
            title: 'VP of Engineering'
        },
        {id: 2,
            name: 'Andy John',
            title: 'Manager of Marketing'
        },
        {id: 3,
            name: 'Smith Paul',
            title: 'Engineer'
        },
    ]
}
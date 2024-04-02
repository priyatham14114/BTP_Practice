namespace demo.db;

using {reusable.types as typ} from './reusabletypes';

using {
  cuid
} from '@sap/cds/common';

// @assert.unique: {
//   Email : [Email], // assert represents current obj i.e "Email or phn"
//   Mobile: [Mobile]
// }


entity employee : cuid {
  fname      : String;
  lname      : String;
  salary     : Decimal;
  Email      : typ.Email;
  Mobile     : typ.Mobile;
  // fulladdres : Composition of addres;
// "association to" another key word
}

entity addres{
  door_num : String;
  street   : String;
  village  : String;
  city     : String;
}

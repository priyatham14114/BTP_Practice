namespace demo.db;

using {reusable.types as typ} from './reusabletypes';
using {cuid} from '@sap/cds/common';

// @assert.unique: {
//   Email : [Email], // assert represents current obj i.e "Email or phn"
//   Mobile: [Mobile]
// }


entity employee: cuid {
  fname      : String;
  lname      : String;
  salary     : Decimal;
  Email      : typ.Email;
  Mobile     : typ.Mobile;
  // fullAddres : Composition of many addres
  //              on fullAddres.employee = $self;
  addres : Composition of addres;
  Department :  Association to department;
  Designation : association to designation;
// "association to" another key word
}

entity addres: cuid {
  door_num : String;
  street   : String;
  village  : String;
  city     : String;
  employee : Association to employee;
}

entity department: cuid {
  dept_name   : String;
  description : String;
  headCount   : Integer;
}

entity designation: cuid {
  dsg_name    : String;
  description : String;
  level       : String;
}

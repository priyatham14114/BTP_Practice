using { demo.db as db } from '../db/Data_model';


@path: '/EmployeeSrv'
service empserv {
entity employee as projection on db.employee;       // service one 
entity addres as projection on db.addres;
entity department as projection on db.department;
entity designation as projection on db.designation;

}
// @path: '/EmployeeSrv2'
// service empserv2 {                                          
// entity addres as projection on db.addres;           // service two 
// }
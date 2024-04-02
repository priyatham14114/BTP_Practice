using { demo.db as db } from '../db/Data_model';


@path: '/EmployeeSrv'
service empserv {
entity employee as projection on db.employee;
// entity addres as projection on db.addres;
}
@path: '/EmployeeSrv2'
service empserv2 {
entity addres as projection on db.addres;
}
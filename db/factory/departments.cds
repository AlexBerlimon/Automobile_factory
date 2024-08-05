namespace db.factory;

using {
    cuid,
    managed
} from '@sap/cds/common';

using db.factory.Employees from './employees';

@cds.autoexpose
entity Departments : cuid, managed {

    departmentName : String;
    employees : Association to one Employees;
    
}
using {empserv} from './empservice';

annotate empserv.address with @(Capabilities: {
    InsertRestrictions: {
        $Type     : 'Capabilities.InsertRestrictionsType',
        Insertable: true
    },
    UpdateRestrictions: {
        $Type    : 'Capabilities.UpdateRestrictionsType',
        Updatable: true
    },
    DeleteRestrictions: {
        $Type    : 'Capabilities.DeleteRestrictionsType',
        Deletable: false
    },
    ReadRestrictions  : {
        $Type   : 'Capabilities.ReadRestrictionsType',
        Readable: true
    },
});

annotate empserv.department with @(Capabilities: {
    InsertRestrictions: {
        $Type     : 'Capabilities.InsertRestrictionsType',
        Insertable: true
    },
    UpdateRestrictions: {
        $Type    : 'Capabilities.UpdateRestrictionsType',
        Updatable: true
    },
    DeleteRestrictions: {
        $Type    : 'Capabilities.DeleteRestrictionsType',
        Deletable: false
    },
    ReadRestrictions  : {
        $Type   : 'Capabilities.ReadRestrictionsType',
        Readable: true
    },
});

annotate empserv.employee with {
    fname        @title: '{i18n>fname }';
    lname        @title: '{i18n>lname }';
    salary       @title: '{i18n>salary}';
    Email        @title: '{i18n>Email }'; // last change here.....check with fname and lname
    Mobile       @title: '{i18n>Mobile}';
    full_address @title: '{i18n>full_address}';
// Department_ID @title: '{i18n>Department_ID}';


};

annotate empserv.department with {
    dept_name @title: '{i18n>dept_name}';
};

annotate empserv.address with {
    door_num @title: '{i18n>door_num}';
};

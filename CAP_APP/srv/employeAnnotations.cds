using {empserv} from './empservice';

annotate empserv.addres with @(Capabilities: {
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



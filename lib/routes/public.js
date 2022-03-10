'use strict';

module.exports = {
    method: 'get',
    path: '/{p*}',
    handler: {
        directory: {
            path: 'public'
        }
    }
};

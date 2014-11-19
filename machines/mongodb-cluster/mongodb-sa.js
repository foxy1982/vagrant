db = db.getMongo().getDB('admin');

db.createUser({
    user: 'superuser',
    pwd: 'password',
    roles: [ 'root' ]
});

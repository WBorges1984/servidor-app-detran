import { db } from '../config/database.js';

function clearTable(tableName, callback) {
    const ssql = `TRUNCATE TABLE ??`; // Usando ?? para prevenir SQL Injection

    db.query(ssql, [tableName], (err, result) => {
        callback(err, result);
    });
}

export default { clearTable };
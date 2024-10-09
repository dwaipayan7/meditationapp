const db = require('./infrastructure/db/index')

const getAllSongs = async () => {
    const result = await db.query('SELECT * FROM songs'); // Running the query
    return result.rows;
};

getAllSongs().then(songs => console.log(songs)).catch(err => console.error(err));

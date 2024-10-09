const { Pool } = require('pg');

// Set up the PostgreSQL connection using Pool
const pool = new Pool({
    user: 'postgres',          // PostgreSQL user
    password: 'admin',         // PostgreSQL password
    host: 'localhost',         // Server host (usually localhost)
    port: 5432,                // PostgreSQL default port
    database: 'postgres'       // Name of the database you want to connect to
});

// Export the query function to use it in other files
module.exports = {
    query: (text, params) => pool.query(text, params) // Allowing queries with parameters
};

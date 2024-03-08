require('dotenv').config();

module.exports = {
	CORS_ORIGIN: process.env.REACT_APP_ORIGIN || 'http://localhost:3000'
}

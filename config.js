var config = {
    mongo: {
        "url": process.env.MONGO_URL || "mongodb://locahost:27017/todos",
        "settings": {
            "db": {
                "native_parser": false
            }
        }
    }
};

module.exports = config;
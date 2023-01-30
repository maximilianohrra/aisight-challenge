var assert = require('assert');
var request = require('supertest');
var server = require('./server');

describe('Server', function() {
    afterEach(() => {
        server.close();
    });

    it('should return "Hello World"', function(done) {
        request(server)
            .get('/')
            .expect(200)
            .expect('Hello World\n', done);
    });
});

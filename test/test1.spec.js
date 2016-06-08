'use strict';

var assert = require('chai').assert;
var app = require('../server/server.js');

var item = app.models.Item;

describe('First test -', function () {

  it ('be able to get create a item', function(done) {

    item.create({name: 'HOLA'}, function(err, model){

      console.log(model);
      assert.isObject(model, 'Model is undefined');
      assert.property(model, 'name');
      done();
    });
  });

});

console.log("app.js is linked!");

// ------ User Model ------ //

var User = Backbone.Model.extend({
    urlRoot: "/api/users"
});

// ------ User View ------ //

var UserView = Backbone.View.extend({
    initialize: function() {
        console.log("user view is here");
    },


    //attach a listener to the create account submit button
    //create a new instance of user model from inputs
    //save it
    //create a new view from the model?
});

// ------ User Collection ------ //

// var UserCollection = Backbone.Collection.extend({
//     model: User,
//     url: "/api/users"
// });

// ------ User Collection View ------ //



// ------ Job Model ------ //

var Job = Backbone.Model.extend({

});

// ------ Job View ------ //

var JobView = Backbone.View.extend({
    initialize: function(){
        console.log("job view is here")
    },
    //template: 

});

// ------ Job Collection ------ //

var JobCollection = Backbone.Collection.extend({
    model: Job,
    url: "/api/users/user_id/jobs"
    //this url is going to need a way to get the user_id, maybe a function?
});

// ------ Job Collection View ------ //

var JobCollectionView = Backbone.View.extend({

});

    route.start(true);
    var route = route.create();

    route('/', function(){
        riot.mount("#main","home");
    });

    route('/verify/..', function(slug, id){
        riot.mount("#main","verify");
   });

   route('/projects', function(){
        riot.mount("#main","project");
    });
     route('/explore', function(){
        riot.mount("#main","explore");
    });
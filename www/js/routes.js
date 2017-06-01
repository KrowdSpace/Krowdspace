route.start(true);
var route = route.create();

route('/', function()
{
	riot.mount("#main","home");
});
route('/account/dashboard', function()
{
	riot.mount("#main","dashboard");
});
route('/account/profile', function(){

	riot.mount("#main","profile");
});
route('/account/register', function()
{
	riot.mount("#main","register");
});
route('/account/boosts', function()
{
	riot.mount("#main","modify-project");
});
route('/account/verify/..', function()
{
	riot.mount("#main","verify");
});
 route('/explore', function()
 {
	riot.mount("#main","explore");
});
route('/explore/project', function(){
	riot.mount("#main","project");
});
route('/api/facebook', function(slug, id){
	riot.mount("#main","facebook");
});
route('/login',function(){
	riot.mount("#main","account-login-verify");
});
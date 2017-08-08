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
route('/account/resource', function(){

	riot.mount("#main","resource");
});
route('/account/register', function()
{
	riot.mount("#main","register");
});
route('/account/giveaway', function()
{
	riot.mount("#main","giveaway");
});
route('/account/admin', function()
{
	riot.mount("#main","admin");
});

route('/account/reset', function()
{
	riot.mount("#main","reset");
});
route('/account/verify..', function()
{
	riot.mount("#main","verify");
});
route('/account/login', function()
{
	riot.mount("#main","login-account");
});
route('/account/success', function()
{
	riot.mount("#main","success-page-register");
});
 route('/explore', function()
 {
	riot.mount("#main","explore");
});
route('/explore/project', function()
{
	riot.mount("#main","explore");
});
route('/explore/project/*', function(uri)
{
	riot.mount("#main", "project", {test: 'test', uri: uri});
});

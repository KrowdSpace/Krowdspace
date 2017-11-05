const riot = require('riot');
const Router = require('riot-router');

require('../tags/main.tag');

require('../tags/home/home.tag');

require('../tags/global/navigation.tag');
require('../tags/global/footer.tag');
require('../tags/global/login.tag');
require('../tags/global/register.tag');
require('../tags/global/submission.tag');
require('../tags/global/password.tag');
require('../tags/global/contact.tag');
require('../tags/global/contact-confirm.tag');
require('../tags/global/submit-confirm.tag');
require('../tags/global/google-analytics.tag');
require('../tags/global/giveaway-live.tag');
require('../tags/global/privacy.tag');
require('../tags/global/service.tag');
require('../tags/global/disclaimer.tag');
require('../tags/global/brand.tag');
require('../tags/global/about.tag');

require('../tags/home/hero-banner.tag');
require('../tags/home/features.tag');
require('../tags/home/benefits.tag');
require('../tags/home/metrics.tag');
require('../tags/home/questions.tag');
require('../tags/home/giveaway-home.tag');
require('../tags/home/home-modals.tag');

require('../tags/dashboard/dashboard.tag');
require('../tags/dashboard/dashboard-page.tag');
require('../tags/dashboard/dash-header.tag');
require('../tags/dashboard/dash-body.tag');
require('../tags/dashboard/dash-buttons.tag');
require('../tags/dashboard/dash-button.tag');
require('../tags/dashboard/delete.tag');
require('../tags/dashboard/reward.tag');
require('../tags/dashboard/refresh.tag');
require('../tags/dashboard/purchase.tag');
require('../tags/dashboard/purchase-modal.tag');
require('../tags/dashboard/verify-status.tag');

require('../tags/register/register-page.tag');
require('../tags/register/registration.tag');
require('../tags/register/registration-header.tag');
require('../tags/register/registration-form.tag');
require('../tags/register/registration-body.tag');
require('../tags/register/relative.tag');
require('../tags/register/perk.tag');
require('../tags/register/project-modal.tag');
require('../tags/register/error.tag');

require('../tags/profile/profile-page.tag');
require('../tags/profile/profile.tag');
require('../tags/profile/profile-header.tag');
require('../tags/profile/profile-body.tag');

require('../tags/explore/explore.tag');
require('../tags/explore/explore-header.tag');
require('../tags/explore/explore-filter.tag');
require('../tags/explore/explore-card.tag');

require('../tags/resource/resource-quicklinks.tag');

require('../tags/resource/resource-main/resource-header.tag');

require('../tags/resource/pre-launch/prelaunch-body.tag');
require('../tags/resource/pre-launch/prelaunch-header.tag');

require('../tags/resource/post-launch/postlaunch-header.tag');
require('../tags/resource/post-launch/postlaunch-body.tag');

require('../tags/resource/media-contacts/media-header.tag');
require('../tags/resource/media-contacts/media-body.tag');

require('../tags/resource/social-media/social-header.tag');
require('../tags/resource/social-media/social-body.tag');

require('../tags/resource/press-release/pressrelease-body.tag');
require('../tags/resource/press-release/pressrelease-header.tag');


require('../tags/projects/project-page.tag');
require('../tags/projects/project.tag');
require('../tags/projects/project-header.tag');
require('../tags/projects/project-body.tag');
require('../tags/projects/coupon.tag');

require('../tags/giveaway/giveaway.tag');
require('../tags/giveaway/giveaway-header.tag');
require('../tags/giveaway/giveaway-body.tag');

require('../tags/reset/reset.tag');
require('../tags/reset/reset-header.tag');

require('../tags/admin/admin.tag');
require('../tags/admin/admin-page.tag');
require('../tags/admin/admin-header.tag');
require('../tags/admin/admin-body.tag');

router.routes([
  new Router.DefaultRoute({tag: 'home'}),

  new Router.Route({tag: 'home', path: '/info/:uri'}),

  new Router.Route({tag: 'dashboard', path: '/account/dashboard'}),
  new Router.Route({tag: 'registration', path: '/account/register'}),
  new Router.Route({tag: 'profile', path: 'account/profile'}),
  new Router.Route({tag: 'reset', path: '/account/reset'}),
  new Router.Route({tag: 'explore', path: '/explore'}),
  new Router.Route({tag: 'giveaway', path: '/giveaway'}),
  new Router.Route({tag: 'admin', path: '/admin'}),

  new Router.Route({tag: 'resource-header', path: '/resource/main'}),
  new Router.Route({tag: 'prelaunch-header', path: '/resource/pre-launch'}),
  new Router.Route({tag: 'postlaunch-header', path: '/resource/post-launch'}),
  new Router.Route({tag: 'media-header', path: '/resource/media-contacts'}),
  new Router.Route({tag: 'social-header', path: '/resource/social-media'}),
  new Router.Route({tag: 'pressrelease-header', path: '/resource/press-release'}),


  new Router.Route({tag: 'project', path: '/project/:uri'}),

]);

router.start();
document.addEventListener('DOMContentLoaded', ()=>{
	riot.mount('*');
});



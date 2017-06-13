<home-modal-rewards>
    <div id="modal-reward" class="modal container fade">
        <div class="krowdspace-modal col-sm-10 col-sm-offset-1">
            <div id="modal" class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close btn-modal" data-dismiss="modal" aria-hidden="true"><i class="fa fa-2x fa-times text-primary" aria-hidden="true"></i></button>
                    <p class="modal-heading">Reward Examples</p>
                </div>
                <div class="modal-body">
                    <p>For every project that is submitted to Krowdspace an exclusive reward will need to be provided for backers who support you through our platform. Krowdspace will look over each submission and the reward will need to be approved by our staff. This can take up to 24 hours. Make sure you can achieve these extra rewards when your project is successful. You will be obligated to fulfill any extra rewards listed on your Krowdspace project profile.</p>
                    <p>One of the most common rewards is offering an extra 10%-20% off a backer’s tier pledge. You will need to make sure that it is clear for all backers to pledge a custom backing amount in the $1 "Thank You" area. They will need to put in the correct tier amount minus the 10%-20% you have chosen. Make sure to take into account your shipping costs. Another option would be to refund that 10%-20% on the tail end of your project after it has been completed. This is just an example amount and you can decide what reward amount or add-on you would like to offer. Here are some additional examples:
                    </p>
                    <ul class="example-reward">
                        <li>All Krowdspace members will get a free upgrade to the next tier automatically.</li>
                        <li>Krowdspace members who back this item will get to choose from additional colors that won’t be available to anyone else.</li>
                        <li>If you back our 3-item tier we will send you an extra item.</li>
                        <li>All Krowdspace members will be given protective cases with your pledge item.</li>
                        <li>All Krowdspace members will receive free shipping. Pledge the custom amount for the tier you would like minus the shipping cost.</li>
                        <li>All Krowdspace members who back over $50 will receive another item free.</li>
                        <li>All Krowdspace members will have continued access to Early Bird Pricing. Pledge the Early Bird Price in the custom pledge area.</li>
                        <li>All Krowdspace members will receive 15% off their pledges. Select the custom pledge amount and put in the tier you would like minus 15%.</li>
                        <li>All Krowdspace members will be given a custom engraved frisbee.</li>
                    </ul>
                    <p>Keep it simple and make it creative. People love to see that their pledge is helping your project come to life and personal touches make all the difference. if you have any questions about rewards please <a class="home-links" href= "mailto:Mason@Krowdspace.com">contact us</a>.</p>
                    <div class="text-center">
                        <button type="button" class="text-center modal-close"  data-dismiss="modal" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
		<div class="background-modal-close" data-dismiss="modal"> </div>
    </div>
    <script>
        this.on('mount', function()
        {
            var url = window.location.href;
            if (url.indexOf('?reward=1') != -1) 
            {
                $("#modal-reward").modal('show');
                $('#modal-reward').fadeIn(100);
            };
        });
</script>
</home-modal-rewards>
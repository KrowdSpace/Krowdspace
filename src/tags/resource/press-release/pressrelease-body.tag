<pressrelease-body>
    <div class="row resource-row resource-relative">
        <div show={ !pressCheck } class="resource-gradient resource-gradient-alt text-center">
            <button class="btn btn-primary btn-resource" data-toggle="modal" data-target="#Login">
                <i class="fa fa-chevron-down resource-arrow"></i>
            </button>
        </div>
        <div class="resource-content media-content">
            <div class="press-release-guide">
                <p class="resource-page-title">How to Write a Press Release</p>
                <p>The following guide will show you the basic components for writing a press release. A press release can be displayed on your website or directly sent to media outlets as an attachment. The bottom portion of this guide will show you how to write effective emails when sending your press release to media contacts.</p>
                <p class="resource-guide"><span class="resource-title-bold">Generic Formatting:</span> The example press release used Helvitica Bold Oblique with a font size of 14px for the headline. The sub-headline used Helvitica Light Oblique with a font size of 13px. The press release content used Helvitica Light with a font size of 13px.</p>
                <p class="resource-guide"><span class="resource-title-bold">Company Logo:</span> A solid press release will have the company logo at the top center of the document. Your logo is the first image people see when searching for your brand so it is an important addition.</p>
                <p class="resource-guide"><span class="resource-title-bold">Product Release Date:</span> The release date is optional. If you choose to include it, use all capital letters under the logo on the right margin. It should say either “FOR IMMEDIATE RELEASE”, or “FOR RELEASE ON (DATE) AT (TIME)”. This gives media outlets specific instructions on when they can release your document.</p>
                <p class="resource-guide"><span class="resource-title-bold">Headline:</span> The headline is meant to grab the reader's attention and intrigue him/her enough to keep reading. It should be in initial caps, meaning the first letter of every word is capitalized. Keep it short and use language that is clear and easy to understand. We suggest using only between 80-170 characters. </p>
                <p class="resource-guide"><span class="resource-title-bold">Sub-Headline:</span> The sub-headline is the underscore to your headline. It can emphasize your product and expose further details about your overarching goals. The sub headline can be a catchy quote or a detailed sentence.</p>
                <p class="resource-guide"><span class="resource-title-bold">Dateline:</span> The dateline will give the location and date of the release. We prefer using the city and state in all capital letters. This can be placed before the first body paragraph.</p>
                <p class="resource-guide"><span class="resource-title-bold">First Paragraph:</span> The first paragraph should present the who, what, when, where, and why/how of the press release. It gives all of the information needed to make an informative decision on publication. Stay away from general descriptions and buzzwords such as "revolutionary" or "game changer". The more specific you are the more confident your reader will be in your product. </p>
                <p class="resource-guide"><span class="resource-title-bold">Second Paragraph:</span> The second paragraph will validate your headline and first body paragraph. It can have customer quotes or other individuals who support your message. This would be a great place to include industry experts and testimonials.</p>
                <p class="resource-guide"><span class="resource-title-bold">About Paragraph:</span> The about paragraph is also known as the boilerplate and contains a short statement about your company. It is basically a promotional quote containing a website link, a slogan or company core value.</p>
                <p class="resource-guide resource-guide-bottom"><span class="resource-title-bold">Contact Information:</span> The press release will have contact information including your full name, company name, phone number and email address. Make sure to add three - # # # - pound signs to signal the end of the press release.</p>
            </div>
            <div class="press-release-example">
                <a href="{ pressExample }" target="_blank">
                <img alt="Krowdspace Press Release" src="/images/krowdspace-press-release.jpg" class="krowdspace-press img-responsive">
              </a>
            </div>
        </div>
        <div class="resource-content media-content-reverse">
            <div class="email-template-example">
                <a href="/brand/krowdspace-email-format.pdf" target="_blank">
                <img alt="Krowdspace Email Template" src="/images/krowdspace-email-template.jpg" class="krowdspace-email img-responsive">
                </a>
            </div>
            <div class="email-release-guide">
                <p class="resource-page-title">How to Market a Press Release</p>
                <p class="resource-guide">The message you send to media outlets is just as important as the actual press release. The most common way to distribute your press release is through email. We will go over an email template that can be used with our <a class="anchor-link" href="/#/resource/media-contacts">media contact area</a> to maximize publications for your campaign.</p>
                <p class="resource-guide"><span class="resource-title-bold">To Field:</span> Only send your press release to 1 company at a time and limit the amount of people cc' within the organization. Sending a mass email blast will get marked as spam and not be delivered. It might be tempting to do this, but your patience will be rewarded in the end.</p>
                <p class="resource-guide"><span class="resource-title-bold">Email Attachments:</span> Do not add attachments to your email. Large media outlets have spam filters that will bounce your email to the junk folder. We recommend adding download links to the email body for the high resolution images and full press release. You can use a separate service like Google Docs or we can <a class="anchor-link" data-toggle="modal" data-target="#Contact">build a landing page</a> for your campaign.</p>
                <p class="resource-guide"><span class="resource-title-bold">Email Subject:</span> Journalists will decide to open an email based on the subject alone. Keep this as short and concise as possible. Long email subject lines get cut off on most email services. You can use a modified version of your headline from the press release guide. On our email example the subject line is located at the top in bold.</p>
                <p class="resource-guide"><span class="resource-title-bold">Email Introduction:</span> Make the email introduction as personal as possible. Journalists are more likely to respond to emails if they are directly named in the greeting. If you have a generic contact email, then use the company name.</p>
                <p class="resource-guide"><span class="resource-title-bold">First Paragraph:</span> Take the first paragraph from the press release guide and paste it into the email body. This paragraph was written to stand alone and will be perfect for a quick explanation of what you are seeking. Adding the second paragraph from the press release guide is optional but will give validation to your above statements.</p>
                <p class="resource-guide resource-guide-bottom"><span class="resource-title-bold">Second/Third Paragraph:</span> Be as forward as possible and inform the media contact exactly what you are looking for. Ask to be featured in an upcoming article or to have your press release published on their website. This is where you can add links to the high resolution images and full press release content. Offer your help to expand on the content provided in your email. Be available for questions or guidance in the publication process. Make sure your contact information is in your signature and send it off.</p>
            </div>
        </div>
    </div>
    <script>
    krowdspace.v1.check().then((res) => {
      this.pressCheck = true;
      this.pressExample = '/brand/krowdspace-press-release.pdf';
      this.update();
    },
    (err) => {
      this.pressCheck = false;
      this.pressExample = '';
      this.update();
    });
    </script>
</pressrelease-body>

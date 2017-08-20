<global-modal-contact>
   <div id="modal-global-contact" class="modal container fade">
      <div class="krowdspace-modal-custom col-lg-offset-3 col-lg-6 col-md-offset-2 col-md-8">
         <div id="modal">
            <div class="modal-body modal-custom">
                <form ref="commentForm2" onsubmit={ contactMessageModal }>
                <div class="text-left modal-box-alt modal-max-box-alt">
                    <button type="button" class="close btn-modal" data-dismiss="modal" aria-hidden="true">
                        <i class="fa fa-2x fa-times krowdspace" aria-hidden="true"></i>
                    </button>
                   <p class="modal-heading modal-heading-alt">Contact Krowdspace</p>
                    <p class="text-left cta-header">If you have any questions or concerns please contact us using the below form.</p>
                    <div class="form-group">
                        <input type="text" ref="contactName" class="form-control" placeholder="Full Name" required>
                    </div>
                    <div class="form-group">
                        <input type="email" ref="contactEmail" class="form-control" placeholder="Email Address" required>
                    </div>
                    <div class="form-group">
                        <textarea class="form-control" ref="contactMessage" type="text" placeholder="Your Message" rows="3" required></textarea>
                    </div>
                </div>
                <div class="text-center modal-max-box-alt">
                    <input type="submit" class="landing-submit" name="submit" value="Contact Krowdspace">
                </div>
            </form>
         </div>
      </div>
   </div>
<script> 
contactMessageModal(e)
    {
        e.preventDefault(); 
        
        let FULLNAME = this.refs.contactName.value,
            LASTNAME = 'not needed',
            EMAIL = this.refs.contactEmail.value,
            COMMENT = this.refs.contactMessage.value;
    
        krowdspace.register.contact_us(FULLNAME,LASTNAME,EMAIL,COMMENT).then
        ((res) => 
        {
            $('#modal-global-contact').modal('hide');
            $('#modal-comment').modal('show');
            this.refs.commentForm2.reset();
        },
        (err) => 
        {

        });
    }  
</script>
</global-modal-contact>
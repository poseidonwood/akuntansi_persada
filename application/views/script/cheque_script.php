<?php
/*

*/
?>
<script type="text/javascript">
 function find_available(bank_id)
  {
        // SHOW AJAX RESPONSE ON REQUEST SUCCESS
        $.ajax({
            url: '<?php echo base_url('bank/check_available_balance/'); ?>'+bank_id,
            success: function(response)
            {
                $('#available_balance').html(response);
                $('#currrent_amount').val(response);
            }
        });
  }

   var timmer ;
  //USED TO CHECK AVAILABLE AMOUNT 
  function check_amount(val)
  {
    clearTimeout(timmer);
    timmer = setTimeout(function callback()
    {
      var balance  = $('#currrent_amount').val();
      if(parseInt(balance) >= parseInt(val) )
      {
        $(':input[type="submit"]').prop('disabled', false);
      }
      else
      {   
          $(':input[type="submit"]').prop('disabled',true );
      }

    },500)
  }
  </script>
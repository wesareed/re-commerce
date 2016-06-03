jQuery ->
  Stripe.setPublishableKey($('meta[name="stripe-key"]').attr('content'))
  payment.setupForm()

payment =
  setupForm: ->
    $('#new_order').submit ->
        $('input[type=submit]').attr('disabled', true)
        Stripe.card.createToken({
          card_number: $('.card-number').val(),
          card_code: $('.card-code').val(),
          exp_month: $('.card-exp-month').val(),
          exp_year: $('.card-exp-year').val()
          }, handleStripeResponse)
        false

handleStripeResponse: (status, response) ->
  if status == 200
    alert(response.id)
  else
    alert(response.error.message)

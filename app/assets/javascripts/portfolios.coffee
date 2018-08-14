ready = undefined
set_positions = undefined

set_positions = ->
  $('.card').each (i) ->
    $(this).attr 'data-pos', i + 1
    return
  return


ready = ->
  set_positions()
  #$('.sortable').sortable()
  $('.sortable').sortable().on 'sortupdate', (e, ui) ->
  #$('.sortable').sortable stop: (e, ui) ->
    updated_order = []
    #set_positions
    $('.card').each (i) ->
      updated_order.push
        id: $(this).data('id')
        position: i + 1
      return
    $.ajax
      type: 'PUT'
      url: '/portfolios/sort'
      data: order: updated_order
    return
  return

$(document).ready ready

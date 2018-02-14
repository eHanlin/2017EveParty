$ = require 'jquery'

nextFrame = (fn) -> setTimeout(fn, 1000)

$ ->
    $('.mask').click ->
        $('.mask').removeClass('focus')
        $(@).addClass('focus')
        $('.check-bar').addClass('show')

    $('.yes').click ->
        $('.check-bar').removeClass('show')
        regex = /\.\/img\/(.*)\.jpg/
        fileName = regex.exec($('.mask.focus img').attr('src'))[1]
        $('.mask.focus img').attr('src', "./img/#{fileName}.PNG")
        nextFrame -> 
            $('.mask.focus').addClass('disabled')
            $('.mask').removeClass('focus')        

    $('.no').click ->
        $('.mask').removeClass('focus')
        $('.check-bar').removeClass('show')
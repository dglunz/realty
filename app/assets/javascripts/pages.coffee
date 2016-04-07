$ ->
  $('a.page-scroll').bind 'click', (e) ->
    $anchor = $(this)
    $('html, body').stop().animate({
      scrollTop: ($($anchor.attr('href')).offset().top - 50)
    }, 1250, 'easeInOutExpo')
    e.preventDefault()

  $('.navbar-collapse ul li a').click (e) -> $('.navbar-toggle:visible').click()

  $(".testimonials-carousel").owlCarousel
    items: 1
    navigation: true
    pagination: true
    autoHeight: true
    navigationText: [
      "<i class='fa fa-angle-left'></i>"
      "<i class='fa fa-angle-right'></i>"
    ]
    transitionStyle: "fadeUp"

  $('body').scrollspy
    target: '.navbar-fixed-top'
    offset: 51

  $header = $('.navbar-fixed-top')
  didScroll = false
  changeHeaderOn = 400

  $(window).on 'scroll', (event) ->
    if !didScroll
      didScroll = true
      setTimeout scrollPage(), 250

  scrollPage = ->
    sy = $('body').scrollTop()
    if sy >= changeHeaderOn
      $('nav.navbar').removeClass('navbar-expanded')
    else
      $('nav.navbar').addClass('navbar-expanded')
    didScroll = false


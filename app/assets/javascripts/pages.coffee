$ ->
  console.log 'butts'

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


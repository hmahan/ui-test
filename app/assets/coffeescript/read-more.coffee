# I haven't used coffeescript before, but it wasn't too bad

$ ->

  window.LP = (->

    initialHeight = 710

    return {

      #I kept this one pretty much the same except I edited it for the right size. 
      showMore : $('.button').on 'click', ->
        if $('.read-more-container').height() > 710
          $('.read-more-container').animate(
            height: initialHeight
          , 500)
          $(this).text('Read More')
        else
          $('.read-more-container').animate(
            height: 2330
          , 500)
          $(this).text('Read Less')
        false


      #I used toggleClass to cut down on the code for this. toggleClass was also chosen because it is better at cross-browser useability (read: IE pre-10), rather than targeting a class by using getElementByClassName in pure javascript 

      lightbox : $('.image-container').click ->
        $(this).toggleClass('lightbox').siblings().removeClass('lightbox')
        $('.image-container').children('img').toggleClass 'lightboxImage'
    }

  )()
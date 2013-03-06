
jQuery ->
    $('article p, blockquote p, article h3').hyphenate('fr')
    
    $(".logo-fm, .logo-chair, .logo-background").hover (->
        console.log('toto')
        $(".logo-fm").toggleClass "logo-fm-hovered"
        $(".logo-chair").toggleClass "logo-chair-hovered"
        $(".logo-background").toggleClass "logo-background-hovered"
    ), (->
        $(".logo-fm").toggleClass "logo-fm-hovered"
        $(".logo-chair").toggleClass "logo-chair-hovered"
        $(".logo-background").toggleClass "logo-background-hovered"
    )
    
    $(".menu-mini").click (->
        console.log("toto")
        $(".content-wrapper").toggleClass "in-viewport"
    )
    
    $(".choose-english").hover (->
        $(".language-chooser").toggleClass "bullet-before-english"
    )
    
    $(".choose-french").hover (->
        $(".language-chooser").toggleClass "bullet-before-french"
    )
    
    $('.navigation').waypoint('sticky', {
        offset: '40%'
    })
    
    $('.introduction-section').bigtext()

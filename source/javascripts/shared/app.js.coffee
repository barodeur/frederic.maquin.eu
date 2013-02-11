
jQuery ->
    $('article p').hyphenate('fr')
    
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
        $(".language-bullet").toggleClass "bullet-before-english"
    )
    
    $(".choose-french").hover (->
        $(".language-bullet").toggleClass "bullet-before-french"
    )
    
    # $(".choose-french").hover (->
    #     $(this).toggleClass "bullet-before-french"
    # )
    
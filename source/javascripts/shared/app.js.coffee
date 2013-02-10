
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
    
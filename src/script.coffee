book = [
    {
        title: 'Design',
        desc: '学习最实用的设计法则，\n在 Sketch 和 Framer 中进行原型设计。',
        chapters:
            [
                '从感觉开始',
                '设计驱动开发',
                '如何激发灵感',
                '设计 iOS App',
                '三个最常用的设计语言',
                '交互设计'
            ]
    },
    {
        title: 'Code',
        desc: '学习 Swift 和 iOS，\n掌握最实用的开发技巧与工具',
        chapters:
            [
                'Basic Swift Knowlege',
                'iOS Animations',
                'Facebook Pop',
                'Motion Graphic',
                'Git',
                'UICollectionView',
                'Custom Navgiation Transaction',
                'Custom UILabel and UIButton',
                'UIWebView',
                'Core Data',
                'UICollectionView Layout',
                'Cocoapods & Crashlystics'
            ]
    },
    {
        title: 'Market',
        desc: '掌握产品营销的方法，\n把产品推向市场',
        chapters:
            [
                '本质',
                '产品定位',
                '营销的方法',
                '文案'
            ]
    }
]



users = [
    {
        name: '唐巧',
        bio: '《iOS 开发进阶》作者',
        avatar: './img/tangqiao.jpg',
        say: '作为一个只会编程的码农，本书将我带进了设计和市场营销的世界，有一种误入桃花源，发现新大陆的感觉。'
    },
    {
        name: 'Ping',
        bio: 'Designer at Parakeet',
        avatar: './img/mantia.jpg',
        say: 'This book is fucking awesome!'
    },
    {
        name: 'Onevcat',
        bio: '《Swifter》作者',
        avatar: './img/onevcat.jpg',
        say: '如果我只能通过一本书来帮自己走上设计道路的话，那么 Producter 是我唯一的选择。 '
    },
    {
        name: 'Ray',
        bio: 'Artist at Catch Inc',
        avatar: './img/ray.jpg',
        say: 'Thanks to @kevinzhow I can Finally bring my idea into real! '
    },
]












for c in book

    chapter = $('<div>', {class: 'chapter'})

    chapter.append $('<h1>', {text: c.title})
    chapter.append $('<pre>', {text: c.desc})

    sections = $('<ul>', {class: 'sections'})

    for i in [0..4]
        if c.chapters[i] != undefined
            sections.append $('<li>', {text: c.chapters[i]})

    chapter.append sections

    $('.chapters').append chapter


    if c.chapters.length > 5

        fullList = $('<ul>', {class: 'drawer'}).mouseleave ->
                $(this).fadeOut(200)
            .tap ->
                $(this).fadeOut(200)



        for a in c.chapters
            fullList.append $('<li>', {text: a})

        chapter.append fullList

        sections.append $('<span>', {text: 'Show All'}).click ->
            $(this).parent().parent().find('.drawer').fadeIn(200)






quote = (index) ->
    user = users[index]

    $('.quotes .bubble').animate
        scale: 0.8
        opacity: 0.2
        100
        'ease-out'
        ->
            $('.quotes .bubble .avatar').attr('src', "")
            $('.quotes .bubble .avatar').attr('src', user.avatar)
            $('.quotes .bubble .say').html('"' + user.say + '"')
            $('.quotes .bubble .name').html(user.name)
            $('.quotes .bubble .name').append $('<span>', {class: 'bio', text: user.bio})


            $('.quotes .bubble').animate
                scale: 1
                opacity: 1
                250
                'ease-out'
quote(0)
quoteIndex = 0


$('.ctrl .left').click ->
    if quoteIndex > 0
        quote(quoteIndex -= 1)
    else
        quote(quoteIndex = users.length - 1)

$('.ctrl .right').click ->
    if quoteIndex < users.length - 1
        quote(quoteIndex += 1)
    else
        quote(quoteIndex = 0)

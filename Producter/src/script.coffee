cdn = 'http://7j1zot.com1.z0.glb.clouddn.com/'

book = [
    {
        "title": "Design",
        "desc": "学习最实用的设计法则，\n在 Sketch 和 Framer 中进行原型设计",
        "chapters":
            [
                "从感觉开始",
                "设计驱动开发",
                "如何激发灵感",
                "设计 iOS App",
                "三个最常用的设计语言",
                "交互设计"
            ]
    },
    {
        "title": "Code",
        "desc": "学习 Swift 和 iOS，\n掌握最实用的开发技巧与工具",
        "chapters":
            [
                "Basic Swift Knowledge",
                "iOS Animations",
                "Facebook Pop",
                "Motion Graphic",
                "Git",
                "UICollectionView",
                "Custom Navgiation Transaction",
                "Custom UILabel and UIButton",
                "UIWebView",
                "Core Data",
                "UICollectionView Layout",
                "Cocoapods & Crashlystics"
            ]
    },
    {
        "title": "Market",
        "desc": "掌握产品营销的方法，\n把产品推向市场",
        "chapters":
            [
                "本质",
                "产品定位",
                "营销的方法",
                "文案"
            ]
    }
]



users = [
    {
        "name": "池建强",
        "bio": "「MacTalk 出品人」",
        "avatar": "chijianqiang.jpg",
        "say": "人们每天起床，做着同样的事情，他们告诉自己，有一天要为世界做一款产品，但他们从不付诸行动。这是一本可以让你行动起来的技术、设计和产品之书。如果用一句话评价书中的产品「小记」，我想是：绝世而独立。",
        "style": "long"
    },
    {
        "name": "唐巧",
        "bio": "《iOS 开发进阶》作者",
        "avatar": "tangqiao.jpg",
        "say": "这是一本跨界的书，融合了设计、编程，以及市场营销的知识。作为一个只会编程的码农，本书将我带进了设计和市场营销的世界，有一种误入桃花源，发现新大陆的感觉。",
        "style": "long"
    },
    {
        "name": "Onevcat",
        "bio": "《Swifter》作者",
        "avatar": "onevcat.jpg",
        "say": "如果我只能通过一本书来帮自己走上设计道路的话，那么 Producter 是我唯一的选择。 ",
        "style": "normal"
    },
    {
        "name": "Ray",
        "bio": "Designer at Catch Inc",
        "avatar": "ray.jpg",
        "say": "每个设计师都应该要懂得如何实现，不仅仅是为了把自己天马行空的想法变为现实，还为了让自己更正确地做出设计上的决策，以及提升与开发者之间的默契。",
        "style": "long"
    },
    # {
    #     "name": "罗聪翼",
    #     "bio": "《Blender权威指南》作者",
    #     "avatar": "ray.jpg",
    #     "say": "Thanks to @kevinzhow I can Finally bring my idea into real! ",
    #     "style": "short"
    # },
    {
        "name": 'Ping',
        "bio": 'Producter of Weekr',
        "avatar": 'ping.jpg',
        "say": '在我理解设计师不仅是一个造梦者，更需要是一个创造者，从设计到开发，再到营销， Kevin 正诠释了这一切！',
        "style": "normal"
    },
    {
        "name": "王伟兴",
        "bio": "爱范儿 创始人",
        "avatar": "wilson.jpg",
        "say": "热爱，方得始终。这是一本让你把热爱变为现实的最佳指南。 ",
        "style": "short"
    }
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

        fullList = $('<ul>', {class: 'drawer'}).on 'mouseleave click', () ->
            $(this).fadeOut(200)

        for a in c.chapters
            fullList.append $('<li>', {text: a})

        chapter.append fullList

        sections.append $('<span>', {text: 'Show All'}).click ->
            $(this).parent().parent().find('.drawer').fadeIn(200)




quotes = new Array

for u in users

    avatar = $('<img>',  {class: 'avatar', src:  cdn + u.avatar})
    say    = $('<p>',    {class: 'say' + ' ' + u.style,   text:  u.say})
    name   = $('<p>',    {class: 'name',  text:  u.name})
    bio    = $('<span>', {class: 'bio',   text:  u.bio})

    card   = $('<div>',  {class: 'card'}).append avatar[0], say[0]
    info   = $('<div>',  {class: 'info'}).append name[0], bio[0]

    user   = $('<div>',  {class: 'user'}).append card[0], info[0]

    quotes.push user[0]

$('.quotes .container').append quotes

$('.container').slick {
    centerMode: true
    slidesToShow: 1
    autoplay: true
    autoplaySpeed: 4000
    arrows: true
    variableWidth: true
    focusOnSelect: true
    prevArrow: '<button class="slick-prev"><img src="' + cdn + 'arrow.svg"/></button>'
    nextArrow: '<button class="slick-next"><img src="' + cdn + 'arrow.svg"/></button>'
    # responsive: [
        # breakpoint: 1000
        # settings:
            # centerPadding: '10px'
    # ]
}







if window.navigator.userAgent.indexOf("MicroMessenger") != -1
    $('.order a').attr('href', "http://shop2842401.koudaitong.com/v2/showcase/goods?alias=1ifh36uzz")

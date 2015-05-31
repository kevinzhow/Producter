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
        name: '池建强',
        bio: '「MacTalk 出品人」',
        avatar: 'http://static-catch.qiniudn.com/chijianqiang.jpg',
        say: '人们每天起床，做着同样的事情，他们告诉自己，有一天要为世界做一款产品，但他们从不付诸行动。这是一本可以让你行动起来的技术、设计和产品之书。如果用一句话评价书中的产品「小记」，我想是：绝世而独立。',
        class: "long"
    },
    {
        name: '唐巧',
        bio: '《iOS 开发进阶》作者',
        avatar: 'http://static-catch.qiniudn.com/tangqiao.jpg',
        say: '这是一本跨界的书，融合了设计、编程，以及市场营销的知识。作为一个只会编程的码农，本书将我带进了设计和市场营销的世界，有一种误入桃花源，发现新大陆的感觉。',
        class: "long"
    },
    {
        name: 'Onevcat',
        bio: '《Swifter》作者',
        avatar: 'http://static-catch.qiniudn.com/onevcat.jpg',
        say: '如果我只能通过一本书来帮自己走上设计道路的话，那么 Producter 是我唯一的选择。 ',
        class: "short"
    },
    {
        name: 'Ray',
        bio: 'Designer at Catch Inc',
        avatar: 'http://static-catch.qiniudn.com/ray.jpg',
        say: 'All your ideas are belong to real!',
        class: "short"
    },
    # {
    #     name: '罗聪翼',
    #     bio: '《Blender权威指南》作者',
    #     avatar: 'http://static-catch.qiniudn.com/ray.jpg',
    #     say: 'Thanks to @kevinzhow I can Finally bring my idea into real! ',
    #     class: "short"
    # },
    {
        name: 'Ping',
        bio: 'Founder of Color Code',
        avatar: 'http://static-catch.qiniudn.com/ping.jpg',
        say: '在我理解设计师不仅是一个造梦者，更需要是一个创造者，从设计到开发，再到营销， Kevin 正诠释了这一切！',
        class: "short"
    },
    {
        name: '王伟兴',
        bio: '爱范儿 创始人',
        avatar: 'http://static-catch.qiniudn.com/wilson.jpg',
        say: '热爱，方得始终。这是一本让你把热爱变为现实的最佳指南。 ',
        class: "normal"
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
        200
        'ease-in'
        ->
            $('.quotes .bubble .say').removeClass("normal long")
            $('.quotes .bubble .avatar').attr('src', user.avatar)
            $('.quotes .bubble .say').html('"' + user.say + '"')
            $('.quotes .bubble .name').html(user.name)
            $('.quotes .bubble .name').append $('<span>', {class: 'bio', text: user.bio})
            $('.quotes .bubble .say').addClass(user.class)

            $('.quotes .bubble').animate
                scale: 1
                opacity: 1

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


$(document).ready ->
  explorer = window.navigator.userAgent
  weChatIndex = explorer.indexOf("MicroMessenger")
  if weChatIndex != -1
    $('.order a').attr('href', "http://shop2842401.koudaitong.com/v2/showcase/goods?alias=1ifh36uzz")

User.destroy_all
TeaVariety.destroy_all
Tea.destroy_all
Cart.destroy_all
CartTea.destroy_all


User.reset_pk_sequence
TeaVariety.reset_pk_sequence
Tea.reset_pk_sequence
Cart.reset_pk_sequence
CartTea.reset_pk_sequence

annie = User.create(first_name: "Annie", last_name: "Zheng", password:"123", email_address: "annie@irohstea.com")

black_tea = TeaVariety.create(name: "Black Tea", description: "The process for making black tea is defined by allowing the leaf to fully oxidize during production (which means water evaporates out of the leaf and the leaf absorbs more oxygen from the air). The results are the characteristic dark brown and black leaf with typically more robust and pronounced flavors.", image: "https://cdn.shopify.com/s/files/1/0888/8900/files/1_3aa1df20-8fcb-4c55-ad56-27f77f7988c6.png?v=1585323689")
green_tea = TeaVariety.create(name: "Green Tea", description: "All tea starts out green. The green tea process is defined by preventing oxidation. Shortly after picking, the leaves are “fired” (rapid heating) to arrest oxidation and keep the leaf “green” for the duration of production. Green teas are typically steeped for shorter amounts of time and at lower temperatures which will produce a lighter cup with less caffeine.", image: "https://cdn.shopify.com/s/files/1/0888/8900/files/4.png?v=1585323765")
oolong_tea = TeaVariety.create(name: "Oolong Tea", description: "Oolong teas are roughly defined as any tea that undergoes partial oxidation (10-90%), but this fact is not useful by itself. “Baking” (take the term literally) is also a common technique in making oolong tea so it is impossible to summarize categorically. The regional styles and cultivars used tend to define them more than anything else. For example, we refer to both Ti Kwan Yin and Big Red Robe as oolong tea, but they have nothing in common.", image: "https://cdn.shopify.com/s/files/1/0888/8900/files/2_6a6f2146-cfd2-4885-aa02-bd968a593de0.png?v=1585323798")
white_tea = TeaVariety.create(name: "White Tea", description: "The easiest way to define white tea is by its minimal processing – no pan firing, no rolling. The leaves are picked, then slowly and methodically dried. Since the leaves are not shaped by rolling the finished product tends to be quite bulky, but because they are not pan-fired there will be some incidental oxidation.", image: "https://cdn.shopify.com/s/files/1/0888/8900/files/5.png?v=1585323849")
puer_tea = TeaVariety.create(name: "Puer Tea", description: "All puer tea comes from the southwest region of Yunnan, China. There are two types of Puer: sheng puer and shu puer. Sheng puer is a simple non-oxidized tea whose finished product will change naturally over time. Shu puer starts out as a sheng puer, but goes through one more deliberate and accelerated 'post fermentation' process to speed up this change into a matter of weeks as opposed to years.", image: "https://cdn.shopify.com/s/files/1/0888/8900/files/3_678f59f2-49bb-4180-b550-fd57ca07c127.png?v=1585323879")
black_tea = TeaVariety.create(name: "Dark Tea", description: "Dark tea is from Hunan and Sichuan provinces of China and is an aged tea that steeps up smooth with a natural sweet note. Dark teas are often compressed into shapes (most commonly cakes or bricks).", image: "https://cdn.shopify.com/s/files/1/0888/8900/files/7.png?v=1585323916")

teas = [
    {
        name: "Jaekseol", 
        image1: "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Jaekseol-cha.jpg/359px-Jaekseol-cha.jpg", 
        image2: "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c6/Jacksal_Magnolia.jpg/320px-Jacksal_Magnolia.jpg", 
        description: "It is golden, light scarlet in color and has a sweet, clean taste", 
        price: 12, 
        tea_variety: black_tea
    },
    {
        name: "Chun Mee", 
        image1: "https://cdn.shopify.com/s/files/1/1234/1342/products/Cup_Shots_Chun_Mee_800x.progressive.jpg?v=1564071171", 
        description: "It has a bright flavor, light tangy sweetness, and a toasty warm clean finish, making it an excellent green tea during the day or night, with a nice well-rounded flavor and aftertaste.", 
        price: 13, 
        tea_variety: green_tea
    },
    {
        name: "White Peony Bai Mudan", 
        image1: "https://teapedia.org/eng/images/thumb/1/18/Bai-Mudan.jpg/800px-Bai-Mudan.jpg", 
        description: "This classic white tea is grown in Fujian Province, China, and is known as Bai Mudan, or White Peony. This lot is grown on beautifully terraced hills near the coast, and is hand-picked in April, after the Silver Needle harvest. The traditional varietal—Fuding Da Hao—shows off the tea plant’s down-covered buds and tender young leaves, which are maintained through minimal processing: a simple withering in the sun, or inside using warm air. The resulting tea is very voluminous; use a few tablespoons per serving, and prepare with water below boiling (180° F) to highlight the bright sorrel aroma and refreshing, slightly woody flavor. ", 
        price: 32, 
        tea_variety: white_tea
    }
]

Tea.create(teas)

# current_cart = Cart.create(user: annie, checked_out: false)
past_cart = Cart.create(user: annie, checked_out: true)
past_cart2 = Cart.create(user: annie, checked_out: true)

# 3.times do |i|
#     CartTea.create(cart: current_cart, quantity: "#{i+1}", tea: Tea.all.sample)
# end

2.times do |i|
    CartTea.create(cart: past_cart, quantity: "#{i+1}", tea: Tea.all.sample)
    CartTea.create(cart: past_cart2, quantity: "#{i+1}", tea: Tea.all.sample)
end

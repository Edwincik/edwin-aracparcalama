Config = {}

Config.DrawDistance       = 3.0 -- Blip görmeden önceki mesafeyi değiştirin. Daha azı daha iyi performanstır.
Config.EnableBlips        = true -- Blipleri devre dışı bırakmak için false olarak ayarlayın.
Config.MarkerType         = 27    -- Blip'i devre dışı bırakmak için -1 olarak değiştirin.
Config.MarkerColor        = { r = 255, g = 0, b = 0 } -- Blip rengini değiştirin.

Config.dispatch = 'ps-dispatch' -- Polis Bildirimini buradan ayarlayabilirsiniz  örnek:  ps-dispatch or qb-dispatch or erp-dispatch 
Config.MinimumCops = 0
Config.BankMoney = false -- Paranın oyuncu bankasına gitmesini istiyorsanız true olarak ayarlayın


Config.Places = {
        [1] = {
            pedhash = `a_m_y_golfer_01`, -- Oluşturulacak Ped
            pdot = vector3(-557.64, -1695.82, 19.16), 
            peddot = vector4(-448.43, -2184.05, 9.32, 0.0),
            tped = vector3(-448.43, -2184.05, 9.32)
        },
    }

Config.ChopItems = {
    [1] = {
        item = 'airbag',
        price = 100
    },
    [2] = { 
        item = 'lowradio',
        price = 100
    },
    [3] = {
        item = 'stockrim',
        price = 100
    },
    [4] = {
        item = 'doors',
        price = 150
    },
    [5] = {
        item = 'speaker',
        price = 125
    },
    [6] = {
        item = 'splaka',
        price = 100
    },
    [7] = {
        item = 'battery',
        price = 125
    },
    [8] = {
        item = 'belt',
        price = 125
    },
    [9] = {
        item = 'highradio',
        price = 125
    },
    [10] = {
        item = 'highrim',
        price = 150
    },

}


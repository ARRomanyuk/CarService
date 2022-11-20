//
//  HomeViewModel.swift
//  ServiceCar
//
//  Created by ARomanuk on 02.10.2022.
//

import SwiftUI

class HomeViewModel: ObservableObject {
    
    @Published var home: HomeModel
    
    init(home: HomeModel) {
        self.home = home
    }
    
    var arrayHomeView: [HomeModel] = [
        HomeModel(image: "Paint",
                  title: "Фарбування",
                  description: "Pokraska",
                  tapImage: false,
                  imageOne: "Paint2",
                  imageTwo: "Paint3",
                  descriptionOne: "Ми використовуємо професійне обладнання та якісні матеріали великих брендів такі як LESONAL, SIKKENS, MaxMayer (фарби, грунтовки, лаки), більш стійкі до зовнішніх факторів: сонячних променів, реагентів і тертя.Всі малярні роботи проводяться в чистому боксі, спеціальній камері для малярства, в якій підтримуються необхідні умови для якісного нанесення лакофарбового покриття. Від вологості, температури та чистоти повітря залежить рівномірність та стійкість покриття.Фарбування автомобілів проводиться у власній камері малярства італійського виробництва.",
                  descriptionTwo: "Високоякісне фарбування автомобіля - це поєднання хорошої лакокрасочної продукції та досвіду майстра  виконуючого роботу. Залежно від обсягу роботи, ми можемо запропонувати два варіанти фарбування: повний або місцевий.\nПовне фарбування автомобіля - це складний процес, який включає декілька етапів: \n1: демонтаж прилеглих елементів перед фарбуванням  кузова, (а також частини, що заважають процесу); \n2: підготовка елементів до фарбування шляхом зняття іржі, забруднення; \n3: Процес фарбування.Завершуеться фарбування  процесом покриття елементів лаком, сушіння та полірування кінців.Місцеве фарбування - це менш дорогий варіант, але вимагає високої майстерності у виборі тіні фарби. Він використовується при виправленні незначних потертостей, відколюванням лаку, подряпин та інших пошкоджень. При цьому заводське покриття повністю збережене, замінене лише в пошкодженій області. Процес місцевого фарбування займає мало часу, не потребує інвестицій великої суми.Для повного та місцевого фарбування використовуються високоякісні фарби та лаки від провідних виробників автомобілів, що використовують сучасні технології.",
                  arrayPic: ["1","2","3","4","5","6","7","8","9","10"] ),
        HomeModel(image: "Rihtovka",
                  title: "Рихтування",
                  description: "Rihtovka",
                  tapImage: false,
                  imageOne: "Rihtovka2",
                  imageTwo: "Rihtovka3",
                  descriptionOne: "Якщо автомобіль був сильно пошкоджений внаслідок аварії або падіння з висоти - буде потрібно відновлення геометрії кузова. Для такого складного кузовного ремонту автомобіль встановлюється на стапель для усунення перекосів та відновлення геометрії кузова згідно заводських креслень та міток.",
                  descriptionTwo: "Стапель фірми BLACK HAWK дозволяє виправляти пошкодження кузова автомобіля навіть після серйозних ДТП. Деталі кузова витягуються в потрібних напрямках із зусиллям 10-12 тонн, при цьому структура металу не порушується. "),
        HomeModel(image: "Detailing",
                  title: "Детейлінг",
                  description: "Detailing",
                  tapImage: false,
                  imageOne: "Detailing1",
                  imageTwo: "Detailing2",
                  descriptionOne: "Автодетейлінг – це щось більше, ніж просто догляд за автомобілем. Фактично це як реставрація транспортного засобу – додання автомобілю бездоганного вигляду. \nДетейлінг – комплекс технологічних операцій, в результаті яких ваш автомобіль буде виглядати настільки добре, наскільки це можливо.Час проведення детейлінгу залежить від віку і стану вашого авто. Іноді всі операції неможливо виконати протягом дня і на роботу йде до трьох діб.Для цього використовується багато професійних матеріалів та інструментів. Як результат – авто виглядає як нове, і навіть краще.",
                  descriptionTwo: "Стадії виконання робіт з детейлінгу:" +
                  
                  "\n1. Детейлінг проводиться в три основних етапи: повне очищення кузова, полірування з відновленням лакофарбових покриттів і нанесенням захисних матеріалів. На стадії очистки автомобіль ретельно миється. При цьому особлива увага приділяється місцям, де накопичується пил і бруд, таким як торці дверей, або колісні арки. Але як би ретельно не проводилася мийка, на зовнішній поверхні кузова і в салоні залишаються забруднюючі речовини: смоли, частинки металів, гудрон, фарба і таке інше. Щоб підготувати забарвлені поверхні до проведення наступного, другого, етапу детейлінгу, застосовують спеціальне обладнання і засоби для чищення." +

                  "\n2. Друга стадія – полірування з відновленням лакофарбових покриттів. Під час цього етапу видаляються дефекти покриття кузова: розводи фарби, залишки грунтовки, подряпини на поверхні, сліди окислення. Цей процес називають корекцією лакофарбового покриття, або відновлення поліруванням. При цьому задіюються різні техніки полірування (захисна, абразивна, м’яка  і комбінована) з використанням спеціального обладнання і всіляких абразивних матеріалів. Відновлення ЛКП проводиться з максимальним збереженням товщини лакофарбового шару. Під час полірування, як правило, фарби знімається дуже мало." +

                  "Відновлювальне полірування – справжнє мистецтво, яке потребує від фахівця не тільки теоретичних знань, але і добре відпрацьованих практичних навичок. Вкрай важливо, щоб майстер був досить досвідчений і розумів, наскільки акуратно і з увагою до найменших деталей потрібно виконувати свою роботу, щоб пошкодження оригінального лакофарбового покриття було мінімальним. В середньому на цю процедуру витрачається близько 40 годин. Може бути більше або менше, залежно від розмірів вашого автомобіля і його стану." +

                  "Основна перевага професійної  відновної поліровки при детейлінгу полягає не тільки в збереженні оригінальної фарби, але і в тому факті, що обробка, по завершенні роботи, нерідко виглядає краще, ніж в той момент, коли ваш автомобіль тільки зійшов із заводського конвеєра." +
                 "\n3. Завершальна стадія детейлінга полягає в укладанні захисних матеріалів на підготовлену кузовну поверхню з лакофарбовим покриттям і декоративні деталі екстер’єру автомобіля. Для цих цілей використовуються антидощ, нанозахист, воски та інші види захисних складових." +

                  "Автомобільний детейлінг можна проводити з автомобілем будь-якого віку. Професійні студії працюють і з транспортними засобами, які лише як лічені дні назад зійшли з конвеєра, так і з машинами, які експлуатуються вже десятки років."
                 )
    ]
}

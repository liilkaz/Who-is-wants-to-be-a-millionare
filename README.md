# Приложение-игра «Кто хочет стать миллионером»

* Проект на Swift 5, минимальная поддерживаемая iOS – 13, только iPhone.
* Верстка на UIKit кодом.
* Архитектура - MVC.
* **Проект выполнен в рамках первого челленджа марафона "SWIFT MARATHON 6.0"**

---

## Описание проекта

В игре 15 вопросов, для ответа на каждый вопрос дается 30 секунд.
Вопросы поделены на 3 уровня сложности: «легкий», «средний», «сложный».  Каждый уровень содержит по пять вопросов, которые в каждой новой игре могут меняться.

**В игре реализованы три подсказки:**

1. **50/50** - исключает два неправильных ответа, оставляя только один правильный и один неправильный вариант. 
2. **Помощь зала** - на диаграмме показывается явное преимущество определенного варианта. В зависимости от категории вопроса (легкий, средний, сложный), процент вероятности указания на верный ответ варьируется от 50 до 70%. То есть, если уровень вопроса «средний» и «лёгкий» - зал указывает правильный ответ с вероятностью 70%, а если «сложный», то 50%
3. **Право на ошибку** - игроку разрешается допустить одну ошибку при ответе на вопрос и игра на этом не закончится.

---

![50 на 50-min](https://user-images.githubusercontent.com/86955276/218337139-3874b853-54a1-404a-a8c2-b78dd8abb190.gif),![помощь зала](https://user-images.githubusercontent.com/86955276/218336373-6c6f5f6b-29d1-4e84-ad22-7780bf286f48.gif), ![право на ошибку-min](https://user-images.githubusercontent.com/86955276/218337208-3b3a993f-69a2-4f10-97f2-d95a2f769551.gif)

---

Также в игре реализована кнопка **«забрать деньги»**, которая активируется после первого вопроса. Забрать деньги можно в любой момент.

![забрать деньги (1)](https://user-images.githubusercontent.com/86955276/218336371-a9654849-5f3d-4b0c-9ad6-58ba00cbacba.gif)

---

Каждый вопрос имеет свою стоимость:
   - Вопрос 1 - 100 руб.
   - Вопрос 2 - 200 руб.
   - Вопрос 3 - 300 руб.
   - Вопрос 4 - 500 руб.
   - Вопрос 5 - 1000 руб. Первая несгораемая сумма.
    Если игрок неправильно отвечает на 5-й вопрос, то игра заканчивается и игрок остается ни с чем. Если на этот вопрос дан правильный ответ, игроку гарантируется 1000 рублей, даже если он даст неверный ответ до достижения следующей несгораемой суммы в десятом вопросе.
   - Вопрос 6 - 2000 руб.
   - Вопрос 7 - 4000 руб.
   - Вопрос 8 - 8000 руб.
   - Вопрос 9 - 16 000 руб.
   - Вопрос 10 - 32 000 руб. Вторая несгораемая сумма.
   Если игрок неправильно отвечает на этот (10-й) вопрос, он уйдёт с 1000 рублей. Если на этот вопрос игрок отвечает верно, ему гарантируется 32 000 рублей, даже если он даст неверный ответ до достижения 15-го вопроса.
   - Вопрос 11 - 64 000 руб.
   - Вопрос 12 - 125 000 руб.
   - Вопрос 13 - 250 000 руб.
   - Вопрос 14 - 500 000 руб.
   - Вопрос 15 - 1 000 000 руб.

В приложении задействованы звуки и музыка из оригинальной телевизионной версии игры «Кто хочет стать миллионером»

---

### Над проектом работали:

+ [Liliya Feodotova](https://github.com/liilkaz) (Тимлид команды)
+ [Andrew Frolenkov](https://github.com/AndrewFrolenkov)
+ [Nakhid Gadzhaliev](https://github.com/NakhidGadzhaliev)
+ [Buvaysar](https://github.com/Buvaysar)
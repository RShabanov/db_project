-- Bookshop (data insertion)


INSERT `publishers` (`id`, `name`, `location_id`) VALUES
(1, 'Grand Central Publishing', 1),
(2, 'Picador', 2),
(3, 'Penguin Books', 2),
(4, 'Signet Book', 1),
(5, 'Debolsillo', 3),
(6, 'John Wiley & Sons', 4),
(7, 'Verso', 5),
(8, 'Creative Harvest', 6),
(9, 'Farrar, Straus and Giroux', 1),
(10, 'Hodder & Stoughton', 2),
(11, 'Routledge', 7);


INSERT `books` (`id`, `title`,  `description`) VALUES
(
    1,
    'Sometimes I Trip on How Happy We Could Be', 
    'Pop culture is the Pandora\'s Box of our lives. Racism, wealth, poverty, beauty, inclusion, exclusion, and hope - all of these intractable and unavoidable features course through the media we consume. Examining pop culture\'s impact on her life, Nichole Perkins takes readers on a rollicking trip through the last twenty years of music, media and the internet from the perspective of one southern Black woman. She explores her experience with mental illness and how the TV series Frasier served as a crutch, how her role as mistress led her to certain internet message boards that prepared her for current day social media, and what it means to figure out desire and sexuality and Prince in a world where marriage is the only acceptable goal for women.
    Combining her sharp wit, stellar pop culture sensibility, and trademark spirited storytelling, Nichole boldly tackles the damage done to women, especially Black women, by society\'s failure to confront the myths and misogyny at its heart, and her efforts to stop the various cycles that limit confidence within herself. By using her own life and loves as a unique vantage point, Nichole humorously and powerfully illuminates how to take the best pop culture has to offer and discard the harmful bits, offering a mirror into our own lives.'
),

(
    2,
    'In the Country of Others',
    "The world of men is just like the world of botany. In the end, one species dominates another. One day, the orange will win out over the lemon, or vice versa, and the tree will once again produce fruit that people can eat.
    In her first new novel since The Perfect Nanny launched her onto the world stage and won her acclaim for her devastatingly perceptive character studies (The New York Times Book Review), Leila Slimani draws on her own family's inspiring story for the first volume in a planned trilogy about race, resilience, and women's empowerment.
    Mathilde, a spirited young Frenchwoman, falls in love with Amine, a handsome Moroccan soldier in the French army during World War II. After the war, the couple settles in Morocco. While Amine tries to cultivate his family farm's rocky terrain, Mathilde feels her vitality sapped by the isolation, the harsh climate, the lack of money, and the mistrust she inspires as a foreigner. Left increasingly alone to raise her two children in a world whose rules she does not understand, and with her daughter taunted at school by rich French girls for her secondhand clothes and unruly hair, Mathilde goes from being reduced to a farmer's wife to defying the country's chauvinism and repressive social codes by offering medical services to the rural population.
    As tensions mount between the Moroccans and the French colonists, Amine finds himself caught in the crossfire: in solidarity with his Moroccan workers yet also a landowner, despised by the French yet married to a Frenchwoman, and proud of his wife's resolve but ashamed by her refusal to be subjugated. All of them live in the country of others--especially the women, forced to live in the land of men--and with this novel, Leila Slimani issues the first salvo in their emancipation."
),

(
    3,
    'Call Me by Your Name',
    "Andre Aciman's Call Me by Your Name is the story of a sudden and powerful romance that blossoms between an adolescent boy and a summer guest at his parents' cliffside mansion on the Italian Riviera. Each is unprepared for the consequences of their attraction, when, during the restless summer weeks, unrelenting currents of obsession, fascination, and desire intensify their passion and test the charged ground between them. Recklessly, the two verge toward the one thing both fear they may never truly find again: total intimacy. It is an instant classic and one of the great love stories of our time.
    Winner of the Lambda Literary Award for Fiction
    A New York Times Notable Book of the Year - A Publishers Weekly and The Washington Post Best Book of the Year - A New York Magazine Future Canon Selection - A Chicago Tribune and Seattle Times (Michael Upchurch's) Favorite Favorite Book of the Year"
),

(
    4,
    '1984',
    "1984 has come and gone, but George Orwell's prophetic, nightmare vision in 1949 of the world we were becoming is timelier than ever. "1984" is still the great modern classic "negative Utopia" - a startling original and haunting novel that creates an imaginary world that is completely convincing from the first sentence to the last four words. No one can deny this novel's power, its hold on the imagination of whole generations, or the power of its admonitions - a power that seems to grow, not lessen, with the passage of time."
),

(
    5,
    'Jurassic Park (Spanish Edition)',
    "En esta espectacular novela, los dinosaurios vuelven a conquistar la Tierra...
En una isla remota, un grupo de hombres y mujeres emprende una carrera contra el tiempo para evitar un desastre mundial provocado por la desmedida ambición de comercializar la ingeniería genética. Pero todos los esfuerzos resultarán vanos cuando el inescrupuloso proyecto quede fuera de control y el mundo a merced de unas bestias monstruosas...
Parque Jurásico, la novela más célebre de Michael Crichton y una de las más leídas en los últimos años, fue adaptada al cine con enorme éxito por Steven Spielberg."
),

(
    6,
    'C++ All-In-One for Dummies',
    "Get ready for C++20 with all you need to know for complete mastery!
Your comprehensive and updated guide to one of the world's most popular programming languages is here! Whether you're a novice or expert, you'll find what you need to get going with the latest features of C++20. The workhorse of programming languages, C++ gives you the utmost control of data usage and interface and resource allocation. If your job involves data, proficiency in C++ means you're indispensable!
This edition gives you 8 books in 1 for total C++ mastery. Inside, internationally renowned expert John Paul Mueller takes you from the fundamentals of working with objects and classes to writing applications that use paradigms not normally associated with C++, such as those used for functional programming strategies. The book also includes online resources such as source code. You discover how to use a C++ GNU compiler to build applications and even how to use your mobile device for coding.
1. Conquer advanced programming and troubleshooting
2. Streamline your code with lambda expressions
3. Use C++ where you need it: for gaming, enterprise applications, and Web services
4. Uncover object secrets including the use of design patterns
5. Discover how to use functional programming techniques to make code concise and easy to read
If you want to be your organization's C++ guru, C++ All-In-One for Dummies is where it's at!"
),

(
    7,
    'October: The Story of the Russian Revolution',
    "On the centenary of the Russian Revolution, China Miéville tells the extraordinary story of this pivotal moment in history.
In February of 1917 Russia was a backwards, autocratic monarchy, mired in an unpopular war; by October, after not one but two revolutions, it had become the world's first workers' state, straining to be at the vanguard of global revolution. How did this unimaginable transformation take place?
In a panoramic sweep, stretching from St Petersburg and Moscow to the remotest villages of a sprawling empire, Miéville uncovers the catastrophes, intrigues and inspirations of 1917, in all their passion, drama and strangeness. Intervening in long-standing historical debates, but told with the reader new to the topic especially in mind, here is a breathtaking story of humanity at its greatest and most desperate; of a turning point for civilisation that still resonates loudly today."
),

(
    8,
    'On Being German: A Personal Journey Into the German Experience',
    "In the second half of my life, my thoughts and feelings have centered around one thing: the Holocaust. In my younger years I avoided that subject, be it in literature or in entertainment, whenever I possibly could. That was not easy. Television was full of programs in which Germans looked stupid and heinous. My own children watched these things with glee; I fled into another room. Since I have always read a lot, I was at least aware of the avalanche of books that were published about the Holocaust. Still, I kept my blinkers on. I firmly told myself that it was not my business, since I was just a child during that time. Sooner or later such an attitude will have to come to an end. It did for me after I fled a difficult marriage and finally began to examine my life. This was a slow process, aided by a patient psychiatrist. Now, years later, I want to write about my life and about the conflicted feelings such a search will cause in a woman of German nationality."
),

(
    9,
    'Paris Is a Party, Paris Is a Ghost',
    "In a strangely distorted Paris, a Japanese adoptee is haunted by the woman he once loved
When Fumiko emerges after one month locked in her dorm room, she's already dead, leaving a half-smoked Marlboro Light and a cupboard of petrified food in her wake. For her boyfriend, Henrik Blatand, an aspiring translator, these remnants are like clues, propelling him forward in a search for meaning. Meanwhile, Fumiko, or perhaps her doppelg nger, reappears: in line at the Louvre, on street corners and subway platforms, and on the dissection table of a group of medical students.
Henrik's inquiry expands beyond Fumiko's seclusion and death, across the absurd, entropic streets of Paris and the figures that wander them, from a jaded group of Korean expats, to an eccentric French widow, to the indelible woman whom Henrik finds sitting in his place on a train. It drives him into the shadowy corners of his past, where his adoptive Danish parents raised him in a house without mirrors. And it mounts to a charged intimacy shared with his best friend's precocious daughter, who may be haunted herself.
David Hoon Kim's debut is a transgressive, darkly comic novel of becoming lost and found in translation. With each successive, echoic chapter, Paris Is a Party, Paris Is a Ghost plunges us more deeply beneath the surface of things, to the displacement, exile, grief, and desire that hide in plain sight."
),

(
    10,
    '11.22.63',
    "WHAT IF you could go back in time and change the course of history? WHAT IF the watershed moment you could change was the JFK assassination? 11.22.63, the date that Kennedy was shot - unless ...
King takes his protagonist Jake Epping, a high school English teacher from Lisbon Falls, Maine, 2011, on a fascinating journey back to 1958 - from a world of mobile phones and iPods to a new world of Elvis and JFK, of Plymouth Fury cars and Lindy Hopping, of a troubled loner named Lee Harvey Oswald and a beautiful high school librarian named Sadie Dunhill, who becomes the love of Jake's life - a life that transgresses all the normal rules of time.
With extraordinary imaginative power, King weaves the social, political and popular culture of his baby-boom American generation into a devastating exercise in escalating suspense."
),

(
    11,
    'Revival: Little Golden America (1944)',
    "Odnoetazhnya Amerika (One-Storied America) First published in the U.S.S.R. 1936. Little Golden America. First published in England in 1944. Translated from the Russian by Charles Malamuth This is one of the most popular books ever published in the Soviet Union. It remains popular in Russia today. We Americans cannot figure out what makes it so popular. It is a good book, interesting and well written, but does not contain anything so outstanding as to make it the most popular book ever written. Yet almost every Russian seems to have read or to be familiar with "Little Golden America". It describes the adventures of the two authors, who arrived in New York City on the passenger ship Normandie. After one month in New York, they bought a car and started traveling around the United States. They went to Chicago and San Francisco and then swept back through the Southern States. When they arrived back in New York to return to Europe, they said that they had traveled ten thousand miles."
);



-- Book detail insertion
INSERT `books` (`book_id`, 
                `publisher_id`, 
                `publish_date`, 
                `language_id`, 
                `cover`, 
                `cost`, 
                `rate`, 
                `EAN_UPC`) VALUES
( 1, 1, DATE('2021-08-17'), 1, 'paperback', 17.98, 3, 9781538702741 ),
( 2, 3, DATE('2021-08-10'), 1, 'hardcover', 26.00, 4, 9780143135975 ),
( 2, 3, DATE('2021-08-10'), 1, 'paperback', 28.00, 4, 9780593414330 ),
( 3, 2, DATE('2017-10-03'), 1, 'paperback', 17.00, 5, 9781250169440 ),
( 3, 2, DATE('2017-10-03'), 1, 'hardcover', 27.00, 5, 9780374118044 ),
( 4, 4, DATE('2018-11-15'), 1, 'paperback', 12.99, 5, 9780451524935 ),
( 4, 4, DATE('2018-11-15'), 1, 'hardcover', 18.95, 5, 9788441440678 ),
( 5, 5, DATE('2018-06-26'), 4, 'paperback', 12.95, 4, 9781947783744 ),
( 6, 6, DATE('2021-01-07'), 1, 'paperback', 39.99, 4, 9781119601746 ),
( 7, 7, DATE('2018-05-22'), 1, 'paperback', 19.95, 4, 9781784782788 ),
( 7, 7, DATE('2018-05-22'), 1, 'hardcover', 26.95, 4, 9781784782771 ),
( 8, 8, DATE('2018-08-10'), 12, 'paperback', 17.95, 4, 9780692118351 ),
( 8, 8, DATE('2018-08-10'), 12, 'hardcover', 28.95, 4, 9780692118344 ),
( 9, 9, DATE('2021-08-03'), 1, 'hardcover', 26.00, DEFAULT, 9780374229726 ),
( 10, 10, DATE('2012-06-05'), 1, 'paperback', 35.50, 4, 9781444727333 ),
( 10, 10, DATE('2011-11-08'), 1, 'hardcover', 75.00, 4, 9781444744576 ),
( 11, 11, DATE('2019-02-02'), 8, 'paperback', 71.94, 5, 9781138567511 ),
( 11, 11, DATE('2018-01-24'), 8, 'hardcover', 264.00, 5, 9781138556805 ); 


INSERT `categories_for_book` (`book_id`, `category_id`) VALUES
(1, 1960),
(1, 361),
(1, 365),
(2, 1100),
(2, 1171),
(2, 1172),
(3, 952),
(3, 1117),
(3, 1170),
(4, 1081),
(5, 1134),
(6, 759),
(7, 951),
(7, 1434),
(7, 3027),
(8, 1469),
(8, 365),
(8, 1395),
(9, 1095),
(9, 1100),
(9, 1188),
(10, 63),
(11, 1438);


INSERT `book_authors` (`book_id`, `author_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(4, 5),
(5, 6),
(6, 7),
(7, 8),
(8, 9),
(9, 10),
(10, 11),
(11, 12),
(11, 13);


INSERT `clients` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES
(1, "Noah", "Hernandez", "", "940270"),
(2, "Benjamin", "Rodriguez", "", "224930"),
(3, "Isabella", "Brown", "isabellabrown2@mail", "353144"),
(4, "Isabella", "Anderson", "isabellaanderson3@mail", "913679"),
(5, "Noah", "Smith", "noahsmith4@mail", "483866"),
(6, "Emma", "Anderson", "emmaanderson5@mail", "131201"),
(7, "Henry", "Gonzalez", "henrygonzalez6@mail", "571178"),
(8, "Henry", "Brown", "", "405601"),
(9, "Evelyn", "Williams", "", "245075"),
(10, "Lucas", "Gonzalez", "lucasgonzalez9@mail", "867010");


INSERT `orders` (`id`, `client_id`, `status_id`) VALUES
(1, 4, 2),
(2, 5, 7),
(3, 5, 6),
(4, 5, 2),
(5, 1, 6),
(6, 9, 4),
(7, 6, 1),
(8, 8, 5),
(9, 8, 6),
(10, 2, 4);


INSERT `shopping_cart` (`order_id`, `book_id`, `quantity`) VALUES
(1, 9, 3),
(2, 5, 1),
(2, 9, 1),
(3, 9, 1),
(3, 3, 1),
(3, 10, 1),
(3, 5, 1),
(4, 9, 3),
(4, 1, 2),
(5, 5, 1),
(5, 2, 3),
(5, 11, 3),
(6, 1, 2),
(6, 9, 1),
(6, 8, 1),
(6, 2, 1),
(6, 7, 1),
(7, 1, 3),
(7, 9, 2),
(8, 8, 1),
(8, 2, 1),
(8, 11, 3),
(8, 6, 2),
(9, 10, 2),
(9, 5, 3),
(9, 8, 1),
(10, 7, 3);
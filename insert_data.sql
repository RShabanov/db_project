-- Bookshop (data insertion)


INSERT `languages` (`name`) VALUES
('English'),
('Mandarin Chinese'),
('Hindi'),
('Spanish'),
('Standard Arabic'),
('Bengali'),
('French'),
('Russian'),
('Portuguese'),
('Urdu'),
('Indonesian'),
('Standard German'),
('Japanese'),
('Marathi'),
('Telugu'),
('Turkish'),
('Tamil'),
('Yue Chinese'),
('Wu Chinese');


INSERT `book_genres` (`name`) VALUES
('Fantasy'),
('Adventure'),
('Romance'),
('Contemporary'),
('Dystopian'),
('Mystery'),
('Horror'),
('Thriller'),
('Paranormal'),
('Historical fiction'),
('Science Fiction'),
('Memoir'),
('Cooking'),
('Art'),
('Self-help / Personal'),
('Development'),
('Motivational'),
('Health'),
('History'),
('Travel'),
('Guide / How-to'),
('Families & Relationships'),
('Humor'),
('Utopia'),
('Realism'),
('Children’s');


INSERT `categories` (`name`) VALUES
('Antiques & Collectibles'),
('Architecture'),
('Art'),
('Bibles'),
('Biography & Autobiography'),
('Body, Mind & Spirit'),
('Business & Economics'),
('Comics & Graphic Novels'),
('Computers'),
('Cooking'),
('Crafts & Hobbies'),
('Design'),
('Drama'),
('Education'),
('Family & Relationships'),
('Fiction'),
('Foreign Language Study'),
('Games & Activities'),
('Gardening'),
('Health & Fitness'),
('History'),
('House & Home'),
('Humor'),
('Juvenile Fiction'),
('Juvenile Nonfiction'),
('Language Arts & Disciplines'),
('Law'),
('Literary Collections'),
('Literary Criticism'),
('Mathematics'),
('Medical'),
('Music'),
('Nature'),
('Performing Arts'),
('Pets'),
('Philosophy'),
('Photography'),
('Poetry'),
('Political Science'),
('Psychology'),
('Reference'),
('Religion'),
('Science'),
('Self-help'),
('Social Science'),
('Sports & Recreation'),
('Study Aids'),
('Technology & Engineering'),
('Transportation'),
('Travel'),
('True Crime'),
('Young Adult Fiction'),
('Young Adult Nonfiction');


INSERT `order_statuses` (`name`) VALUES
('Pending'),
('Processing'),
('On hold'),
('Completed'),
('Cancelled'),
('Refunded'),
('Failed'),
('In Packaging');


INSERT `publisher_location` (`city`, `region`, `country`) VALUES
('New York', 'New York', 'the USA'),
('London', 'London', 'the United Kingdom'),
('Madrid', 'Madrid', 'Spain'),
('Hoboken', 'New Jersey', 'the USA'),
('Brooklyn', 'New York', 'the USA'),
('Berlin', 'Berlin', 'Germany'),
('Brighton', 'South East England', 'the United Kingdom');


INSERT `publishers` (`name`, `location_id`) VALUES
('Grand Central Publishing', get_publisher_location_id('New York', 'New York', 'the USA')),
('Picador', get_publisher_location_id('London', 'London', 'the United Kingdom')),
('Penguin Books', get_publisher_location_id('London', 'London', 'the United Kingdom')),
('Signet Book', get_publisher_location_id('New York', 'New York', 'the USA')),
('Debolsillo', get_publisher_location_id('Madrid', 'Madrid', 'Spain')),
('John Wiley & Sons', get_publisher_location_id('Hoboken', 'New Jersey', 'the USA')),
('Verso', get_publisher_location_id('Brooklyn', 'New York', 'the USA')),
('Creative Harvest', get_publisher_location_id('Berlin', 'Berlin', 'Germany')),
('Farrar, Straus and Giroux', get_publisher_location_id('New York', 'New York', 'the USA')),
('Hodder & Stoughton', get_publisher_location_id('London', 'London', 'the United Kingdom')),
('Routledge', get_publisher_location_id('Brighton', 'South East England', 'the United Kingdom'));


INSERT `authors` (`firstname`, `middlename`, `lastname`, `about`) VALUES
('Nichole', '', 'Perkins', 'Nichole Perkins is a writer from Nashville, Tennessee. She is a 2016 Callaloo Creative Writing Fellow in poetry, the Audre Lorde Fellow at the 2017 Jack Jones Literary Arts Retreat, and a 2017 BuzzFeed Emerging Writers Fellow. Nichole enjoys too much pop culture and chocolate.'),
('Leila', '', 'Slimani', DEFAULT),
('André', '', 'Aciman', 'ANDRÉ ACIMAN is the author of Eight White Nights, Call Me by Your Name, Out of Egypt, False Papers, Alibis, Harvard Square, and Enigma Variations, and is the editor of The Proust Project. He teaches comparative literature at the Graduate Center of the City University of New York. He lives with his wife in Manhattan.'),
('George', '', 'Orwell', 'George Orwell, the pseudonym of Eric Arthur Blair, was born in Bengal, India, in 1903. He was educated at Eton, became a policeman in Burma but suffered and studied poverty. His great works, Animal Farm and Nineteen Eighty-Four, are a product of his hatred of totalitarianism. His legacy of writing and political thought is much admired today.'),
('Erich', 'Seligmann', 'Fromm', 'Erich Fromm (1900-1980) emigrated from Germany in 1934 to the United States, where he held a private psychotherapeutic practice and taught at Columbia, Yale, and New York University. His many books include The Art of Loving, Escape from Freedom, Man for Himself, and The Anatomy of Human Destructiveness.'),
('Michael', 'John', 'Crichton', 'Michael Crichton (1942-2008) was the author of the bestselling novels The Terminal Man, The Great Train Robbery, Jurassic Park, Sphere, Disclosure, Prey, State of Fear, Next and Dragon Teeth, among many others. His books have sold more than 200 million copies worldwide, have been translated into forty languages, and have provided the basis for fifteen feature films. He wrote and directed Westworld, The Great Train Robbery, Runaway, Looker, Coma and created the hit television series ER. Crichton remains the only writer to have a number one book, movie, and TV show in the same year.'),
('John', 'Paul', 'Mueller', DEFAULT),
('China', 'Tom', 'Miéville', 'China Mieville has a Ph.D. from the London School of Economics. He lives in England. He is the author of several books, including King Rat, which was nominated for both the International Horror Guild and Bram Stoker Awards for best first novel, and Perdido Street Station, winner of the 2001 Arthur C. Clarke Award.'),
('Doris', 'Keating', 'Pena-Cruz', DEFAULT),
('David', 'Hoon', 'Kim', 'David Hoon Kim is a Korean-born American educated in France, who took his first creative writing workshop at the Sorbonne before attending the Iowa Writers\' Workshop and the Stegner Program. His fiction has appeared in The New Yorker, Brins d\'éternité, Le Sabord and XYZ La revue de la nouvelle. He has been awarded fellowships from the Fine Arts Work Center in Provincetown, the Michener-Copernicus Society of America, the MacDowell Colony, the Elizabeth George Foundation, among others. Paris Is a Party, Paris Is a Ghost is his first book. He writes in English and in French.'),
('Stephen', '', 'King', DEFAULT),
('Eugene', '', 'Petrov', DEFAULT),
('Ilya', '', 'Ilf', DEFAULT);


INSERT `books` (`title`, 
                `genre_id`, 
                `description`) VALUES
(
    'Sometimes I Trip on How Happy We Could Be', 
    get_genre_id('Memoir'),
    'Pop culture is the Pandora\'s Box of our lives. Racism, wealth, poverty, beauty, inclusion, exclusion, and hope - all of these intractable and unavoidable features course through the media we consume. Examining pop culture\'s impact on her life, Nichole Perkins takes readers on a rollicking trip through the last twenty years of music, media and the internet from the perspective of one southern Black woman. She explores her experience with mental illness and how the TV series Frasier served as a crutch, how her role as mistress led her to certain internet message boards that prepared her for current day social media, and what it means to figure out desire and sexuality and Prince in a world where marriage is the only acceptable goal for women.
    Combining her sharp wit, stellar pop culture sensibility, and trademark spirited storytelling, Nichole boldly tackles the damage done to women, especially Black women, by society\'s failure to confront the myths and misogyny at its heart, and her efforts to stop the various cycles that limit confidence within herself. By using her own life and loves as a unique vantage point, Nichole humorously and powerfully illuminates how to take the best pop culture has to offer and discard the harmful bits, offering a mirror into our own lives.'
),

(
    'In the Country of Others',
    get_genre_id('Romance'),
    "The world of men is just like the world of botany. In the end, one species dominates another. One day, the orange will win out over the lemon, or vice versa, and the tree will once again produce fruit that people can eat.
    In her first new novel since The Perfect Nanny launched her onto the world stage and won her acclaim for her devastatingly perceptive character studies (The New York Times Book Review), Leila Slimani draws on her own family's inspiring story for the first volume in a planned trilogy about race, resilience, and women's empowerment.
    Mathilde, a spirited young Frenchwoman, falls in love with Amine, a handsome Moroccan soldier in the French army during World War II. After the war, the couple settles in Morocco. While Amine tries to cultivate his family farm's rocky terrain, Mathilde feels her vitality sapped by the isolation, the harsh climate, the lack of money, and the mistrust she inspires as a foreigner. Left increasingly alone to raise her two children in a world whose rules she does not understand, and with her daughter taunted at school by rich French girls for her secondhand clothes and unruly hair, Mathilde goes from being reduced to a farmer's wife to defying the country's chauvinism and repressive social codes by offering medical services to the rural population.
    As tensions mount between the Moroccans and the French colonists, Amine finds himself caught in the crossfire: in solidarity with his Moroccan workers yet also a landowner, despised by the French yet married to a Frenchwoman, and proud of his wife's resolve but ashamed by her refusal to be subjugated. All of them live in the country of others--especially the women, forced to live in the land of men--and with this novel, Leila Slimani issues the first salvo in their emancipation."
),

(
    'Call Me by Your Name',
    get_genre_id('Romance'),
    "Andre Aciman's Call Me by Your Name is the story of a sudden and powerful romance that blossoms between an adolescent boy and a summer guest at his parents' cliffside mansion on the Italian Riviera. Each is unprepared for the consequences of their attraction, when, during the restless summer weeks, unrelenting currents of obsession, fascination, and desire intensify their passion and test the charged ground between them. Recklessly, the two verge toward the one thing both fear they may never truly find again: total intimacy. It is an instant classic and one of the great love stories of our time.
    Winner of the Lambda Literary Award for Fiction
    A New York Times Notable Book of the Year - A Publishers Weekly and The Washington Post Best Book of the Year - A New York Magazine Future Canon Selection - A Chicago Tribune and Seattle Times (Michael Upchurch's) Favorite Favorite Book of the Year"
),

(
    '1984',
    get_genre_id('Utopia'),
    "1984 has come and gone, but George Orwell's prophetic, nightmare vision in 1949 of the world we were becoming is timelier than ever. "1984" is still the great modern classic "negative Utopia" - a startling original and haunting novel that creates an imaginary world that is completely convincing from the first sentence to the last four words. No one can deny this novel's power, its hold on the imagination of whole generations, or the power of its admonitions - a power that seems to grow, not lessen, with the passage of time."
),

(
    'Jurassic Park (Spanish Edition)',
    get_genre_id('Thriller'),
    "En esta espectacular novela, los dinosaurios vuelven a conquistar la Tierra...
En una isla remota, un grupo de hombres y mujeres emprende una carrera contra el tiempo para evitar un desastre mundial provocado por la desmedida ambición de comercializar la ingeniería genética. Pero todos los esfuerzos resultarán vanos cuando el inescrupuloso proyecto quede fuera de control y el mundo a merced de unas bestias monstruosas...
Parque Jurásico, la novela más célebre de Michael Crichton y una de las más leídas en los últimos años, fue adaptada al cine con enorme éxito por Steven Spielberg."
),

(
    'C++ All-In-One for Dummies',
    get_genre_id('Guide / How-to'),
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
    'October: The Story of the Russian Revolution',
    get_genre_id('History'),
    "On the centenary of the Russian Revolution, China Miéville tells the extraordinary story of this pivotal moment in history.
In February of 1917 Russia was a backwards, autocratic monarchy, mired in an unpopular war; by October, after not one but two revolutions, it had become the world's first workers' state, straining to be at the vanguard of global revolution. How did this unimaginable transformation take place?
In a panoramic sweep, stretching from St Petersburg and Moscow to the remotest villages of a sprawling empire, Miéville uncovers the catastrophes, intrigues and inspirations of 1917, in all their passion, drama and strangeness. Intervening in long-standing historical debates, but told with the reader new to the topic especially in mind, here is a breathtaking story of humanity at its greatest and most desperate; of a turning point for civilisation that still resonates loudly today."
),

(
    'On Being German: A Personal Journey Into the German Experience',
    get_genre_id('Memoir'),
    "In the second half of my life, my thoughts and feelings have centered around one thing: the Holocaust. In my younger years I avoided that subject, be it in literature or in entertainment, whenever I possibly could. That was not easy. Television was full of programs in which Germans looked stupid and heinous. My own children watched these things with glee; I fled into another room. Since I have always read a lot, I was at least aware of the avalanche of books that were published about the Holocaust. Still, I kept my blinkers on. I firmly told myself that it was not my business, since I was just a child during that time. Sooner or later such an attitude will have to come to an end. It did for me after I fled a difficult marriage and finally began to examine my life. This was a slow process, aided by a patient psychiatrist. Now, years later, I want to write about my life and about the conflicted feelings such a search will cause in a woman of German nationality."
),

(
    'Paris Is a Party, Paris Is a Ghost',
    get_genre_id('Realism'),
    "In a strangely distorted Paris, a Japanese adoptee is haunted by the woman he once loved
When Fumiko emerges after one month locked in her dorm room, she's already dead, leaving a half-smoked Marlboro Light and a cupboard of petrified food in her wake. For her boyfriend, Henrik Blatand, an aspiring translator, these remnants are like clues, propelling him forward in a search for meaning. Meanwhile, Fumiko, or perhaps her doppelg nger, reappears: in line at the Louvre, on street corners and subway platforms, and on the dissection table of a group of medical students.
Henrik's inquiry expands beyond Fumiko's seclusion and death, across the absurd, entropic streets of Paris and the figures that wander them, from a jaded group of Korean expats, to an eccentric French widow, to the indelible woman whom Henrik finds sitting in his place on a train. It drives him into the shadowy corners of his past, where his adoptive Danish parents raised him in a house without mirrors. And it mounts to a charged intimacy shared with his best friend's precocious daughter, who may be haunted herself.
David Hoon Kim's debut is a transgressive, darkly comic novel of becoming lost and found in translation. With each successive, echoic chapter, Paris Is a Party, Paris Is a Ghost plunges us more deeply beneath the surface of things, to the displacement, exile, grief, and desire that hide in plain sight."
),

(
    '11.22.63',
    get_genre_id('Historical fiction'),
    "WHAT IF you could go back in time and change the course of history? WHAT IF the watershed moment you could change was the JFK assassination? 11.22.63, the date that Kennedy was shot - unless ...
King takes his protagonist Jake Epping, a high school English teacher from Lisbon Falls, Maine, 2011, on a fascinating journey back to 1958 - from a world of mobile phones and iPods to a new world of Elvis and JFK, of Plymouth Fury cars and Lindy Hopping, of a troubled loner named Lee Harvey Oswald and a beautiful high school librarian named Sadie Dunhill, who becomes the love of Jake's life - a life that transgresses all the normal rules of time.
With extraordinary imaginative power, King weaves the social, political and popular culture of his baby-boom American generation into a devastating exercise in escalating suspense."
),

(
    'Revival: Little Golden America (1944)',
    get_genre_id('History'),
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
(
    1,
    get_publisher_id('Grand Central Publishing'),
    DATE('2021-08-17'),
    get_lang_id('English'),
    'paperback',
    17.98,
    3,
    9781538702741
),

(
    2,
    get_publisher_id('Penguin Books'),
    DATE('2021-08-10'),
    get_lang_id('English'),
    'hardcover',
    26.00,
    4,
    9780143135975
),

(
    2,
    get_publisher_id('Penguin Books'),
    DATE('2021-08-10'),
    get_lang_id('English'),
    'paperback',
    28.00,
    4,
    9780593414330
),

(
    3,
    get_publisher_id('Picador'),
    DATE('2017-10-03'),
    get_lang_id('English'),
    'paperback',
    17.00,
    5,
    9781250169440
),

(
    3,
    get_publisher_id('Picador'),
    DATE('2017-10-03'),
    get_lang_id('English'),
    'hardcover',
    27.00,
    5,
    9780374118044
),

(
    4,
    get_publisher_id('Signet Book'),
    DATE('2018-11-15'),
    get_lang_id('English'),
    'paperback',
    12.99,
    5,
    9780451524935
),

(
    4,
    get_publisher_id('Signet Book'),
    DATE('2018-11-15'),
    get_lang_id('English'),
    'hardcover',
    18.95,
    5,
    9788441440678
),

(
    5,
    get_publisher_id('Debolsillo'),
    DATE('2018-06-26'),
    get_lang_id('Spanish'),
    'paperback',
    12.95,
    4,
    9781947783744
),

(
    6,
    get_publisher_id('John Wiley & Sons'),
    DATE('2021-01-07'),
    get_lang_id('English'),
    'paperback',
    39.99,
    4,
    9781119601746
),

(
    7,
    get_publisher_id('Verso'),
    DATE('2018-05-22'),
    get_lang_id('English'),
    'paperback',
    19.95,
    4,
    9781784782788
),

(
    7,
    get_publisher_id('Verso'),
    DATE('2018-05-22'),
    get_lang_id('English'),
    'hardcover',
    26.95,
    4,
    9781784782771
),

(
    8,
    get_publisher_id('Creative Harvest'),
    DATE('2018-08-10'),
    get_lang_id('German'),
    'paperback',
    17.95,
    4,
    9780692118351
),

(
    8,
    get_publisher_id('Creative Harvest'),
    DATE('2018-08-10'),
    get_lang_id('German'),
    'hardcover',
    28.95,
    4,
    9780692118344
),

(
    9,
    get_publisher_id('Farrar, Straus and Giroux'),
    DATE('2021-08-03'),
    get_lang_id('English'),
    'hardcover',
    26.00,
    DEFAULT,
    9780374229726
),

(
    10,
    get_publisher_id('Hodder & Stoughton'),
    DATE('2012-06-05'),
    get_lang_id('English'),
    'paperback',
    35.50,
    4,
    9781444727333
),

(
    10,
    get_publisher_id('Hodder & Stoughton'),
    DATE('2011-11-08'),
    get_lang_id('English'),
    'hardcover',
    75.00,
    4,
    9781444744576
)

(
    11,
    get_publisher_id('Routledge'),
    DATE('2019-02-02'),
    get_lang_id('Russian'),
    'paperback',
    71.94,
    5,
    9781138567511
)

(
    11,
    get_publisher_id('Routledge'),
    DATE('2018-01-24'),
    get_lang_id('Russian'),
    'hardcover',
    264.00,
    5,
    9781138556805
); 
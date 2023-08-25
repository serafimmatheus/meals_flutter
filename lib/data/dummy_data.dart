import 'package:flutter/material.dart';
import 'package:refeicoes/models/meal.dart';

import '../models/category.dart';

const DUMMY_CATEGORIES = [
  Category(
    id: 'c1',
    title: 'Italiano',
    color: Colors.purple,
  ),
  Category(
    id: 'c2',
    title: 'Rápido & Fácil',
    color: Colors.red,
  ),
  Category(
    id: 'c3',
    title: 'Hamburgers',
    color: Colors.orange,
  ),
  Category(
    id: 'c4',
    title: 'Alemã',
    color: Colors.amber,
  ),
  Category(
    id: 'c5',
    title: 'Leve & Saudável',
    color: Colors.amber,
  ),
  Category(
    id: 'c6',
    title: 'Exótica',
    color: Colors.green,
  ),
  Category(
    id: 'c7',
    title: 'Café da Manhã',
    color: Colors.lightBlue,
  ),
  Category(
    id: 'c8',
    title: 'Asiática',
    color: Colors.lightGreen,
  ),
  Category(
    id: 'c9',
    title: 'Francesa',
    color: Colors.pink,
  ),
  Category(
    id: 'c10',
    title: 'Verão',
    color: Colors.teal,
  ),
];

const dummyMeals = [
  Meal(
    id: 'm1',
    categories: ['c1', 'c2'],
    title: 'Espaguete com Molho de Tomate',
    cost: Cost.barato,
    complexity: Complexity.simples,
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg',
    duration: 20,
    ingredients: [
      '4 Tomates',
      '1 Colher de Sopa de Azeite de Oliva',
      '1 Cebola',
      '250g de Espaguete',
      'Temperos',
      'Queijo (opcional)'
    ],
    steps: [
      'Corte os tomates e a cebola em pedaços pequenos.',
      'Ferva água - adicione sal quando ferver.',
      'Coloque o espaguete na água fervente - deve ficar pronto em cerca de 10 a 12 minutos.',
      'Enquanto isso, aqueça o azeite de oliva e adicione a cebola cortada.',
      'Após 2 minutos, adicione os pedaços de tomate, sal, pimenta e outros temperos.',
      'O molho ficará pronto quando o espaguete estiver pronto.',
      'Sinta-se à vontade para adicionar queijo por cima do prato finalizado.'
    ],
    isGlutenFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm2',
    categories: ['c2'],
    title: 'Torrada Havaiana',
    cost: Cost.barato,
    complexity: Complexity.simples,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg',
    duration: 10,
    ingredients: [
      '1 Fatia de Pão Branco',
      '1 Fatia de Presunto',
      '1 Fatia de Abacaxi',
      '1-2 Fatias de Queijo',
      'Manteiga'
    ],
    steps: [
      'Passe manteiga em um lado do pão branco',
      'Coloque presunto, abacaxi e queijo sobre o pão branco',
      'Asse a torrada por cerca de 10 minutos no forno a 200°C'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm3',
    categories: ['c2', 'c3'],
    title: 'Hambúrguer Clássico',
    cost: Cost.justo,
    complexity: Complexity.simples,
    imageUrl:
        'https://cdn.pixabay.com/photo/2014/10/23/18/05/burger-500054_1280.jpg',
    duration: 45,
    ingredients: [
      '300g de Carne Moída',
      '1 Tomate',
      '1 Pepino',
      '1 Cebola',
      'Ketchup',
      '2 Pães de Hambúrguer'
    ],
    steps: [
      'Modele 2 hambúrgueres',
      'Frite os hambúrgueres por cerca de 4 minutos de cada lado',
      'Frite rapidamente os pães por cerca de 1 minuto de cada lado',
      'Pincele os pães com ketchup',
      'Sirva o hambúrguer com tomate, pepino e cebola'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm4',
    categories: ['c4'],
    title: 'Wiener Schnitzel',
    cost: Cost.caro,
    complexity: Complexity.media,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/03/31/19/29/schnitzel-3279045_1280.jpg',
    duration: 60,
    ingredients: [
      '8 Bistecas de Vitela',
      '4 Ovos',
      '200g de Farinha de Rosca',
      '100g de Farinha de Trigo',
      '300ml de Manteiga',
      '100g de Óleo Vegetal',
      'Sal',
      'Rodelas de Limão'
    ],
    steps: [
      'Amacie a vitela até cerca de 2–4mm de espessura e tempere dos dois lados.',
      'Em um prato raso, misture os ovos rapidamente com um garfo.',
      'Passe levemente as bistecas na farinha de trigo, depois mergulhe nos ovos e, por último, passe na farinha de rosca.',
      'Aqueça a manteiga e o óleo em uma frigideira grande (deixe a gordura ficar bem quente) e frite as schnitzels até dourar dos dois lados.',
      'Certifique-se de virar a frigideira regularmente para que as schnitzels fiquem envolvidas pela gordura e a crosta fique "fofa".',
      'Retire e escorra em papel de cozinha. Frite a salsinha no óleo restante e escorra.',
      'Coloque as schnitzels em um prato aquecido e sirva com salsinha e rodelas de limão.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm5',
    categories: ['c2', 'c5', 'c10'],
    title: 'Salada com Salmão Defumado',
    cost: Cost.caro,
    complexity: Complexity.simples,
    imageUrl:
        'https://cdn.pixabay.com/photo/2016/10/25/13/29/smoked-salmon-salad-1768890_1280.jpg',
    duration: 15,
    ingredients: [
      'Rúcula',
      'Alface-de-Cordeiro',
      'Salsinha',
      'Funcho',
      '200g de Salmão Defumado',
      'Mostarda',
      'Vinagre Balsâmico',
      'Azeite de Oliva',
      'Sal e Pimenta'
    ],
    steps: [
      'Lave e corte as folhas da salada e as ervas',
      'Corte o salmão em cubos',
      'Processe a mostarda, o vinagre e o azeite de oliva em um molho',
      'Prepare a salada',
      'Adicione os cubos de salmão e o molho'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm6',
    categories: ['c6', 'c10'],
    title: 'Mousse de Laranja Deliciosa',
    cost: Cost.barato,
    complexity: Complexity.dificil,
    imageUrl:
        'https://cdn.pixabay.com/photo/2017/05/01/05/18/pastry-2274750_1280.jpg',
    duration: 240,
    ingredients: [
      '4 Folhas de Gelatina',
      '150ml de Suco de Laranja',
      '80g de Açúcar',
      '300g de Iogurte',
      '200g de Creme de Leite',
      'Casca de Laranja'
    ],
    steps: [
      'Dissolva a gelatina em uma panela',
      'Adicione o suco de laranja e o açúcar',
      'Retire a panela do fogo',
      'Adicione 2 colheres de sopa de iogurte',
      'Misture a gelatina sob o restante do iogurte',
      'Resfrie tudo na geladeira',
      'Bata o creme de leite e incorpore-o na massa de laranja',
      'Resfrie novamente por pelo menos 4 horas',
      'Sirva com casca de laranja',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm7',
    categories: ['c7'],
    title: 'Panquecas',
    cost: Cost.barato,
    complexity: Complexity.simples,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/07/10/21/23/pancake-3529653_1280.jpg',
    duration: 20,
    ingredients: [
      '1 1/2 xícaras de Farinha de Trigo',
      '3 1/2 colheres de chá de Fermento em Pó',
      '1 colher de chá de Sal',
      '1 colher de sopa de Açúcar',
      '1 1/4 xícaras de Leite',
      '1 Ovo',
      '3 colheres de sopa de Manteiga derretida',
    ],
    steps: [
      'Em uma tigela grande, peneire a farinha de trigo, o fermento em pó, o sal e o açúcar.',
      'Faça um buraco no centro e despeje o leite, o ovo e a manteiga derretida; misture até ficar homogêneo.',
      'Aqueça uma frigideira levemente untada ou uma chapa em fogo médio-alto.',
      'Despeje ou coloque a massa na frigideira, usando aproximadamente 1/4 de xícara para cada panqueca. Doure dos dois lados e sirva quente.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm8',
    categories: ['c8'],
    title: 'Curry de Frango Indiano Cremoso',
    cost: Cost.justo,
    complexity: Complexity.media,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/06/18/16/05/indian-food-3482749_1280.jpg',
    duration: 35,
    ingredients: [
      '4 Peitos de Frango',
      '1 Cebola',
      '2 Dentes de Alho',
      '1 Pedaço de Gengibre',
      '4 colheres de sopa de Amêndoas',
      '1 colher de chá de Pimenta Caiena',
      '500ml de Leite de Coco',
    ],
    steps: [
      'Corte e frite os peitos de frango',
      'Processe a cebola, o alho e o gengibre em uma pasta e refogue tudo',
      'Adicione as especiarias e refogue',
      'Adicione os peitos de frango + 250ml de água e cozinhe tudo por 10 minutos',
      'Adicione o leite de coco',
      'Sirva com arroz'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm9',
    categories: ['c9'],
    title: 'Suflê de Chocolate',
    cost: Cost.barato,
    complexity: Complexity.dificil,
    imageUrl:
        'https://cdn.pixabay.com/photo/2014/08/07/21/07/souffle-412785_1280.jpg',
    duration: 45,
    ingredients: [
      '1 colher de chá de Manteiga derretida',
      '2 colheres de sopa de Açúcar',
      '2 Ounces (cerca de 56g) de Chocolate Amargo 70%, quebrado em pedaços',
      '1 colher de sopa de Manteiga',
      '1 colher de sopa de Farinha de Trigo',
      '4 1/3 colheres de sopa de Leite gelado',
      '1 Pitada de Sal',
      '1 Pitada de Pimenta Caiena',
      '1 Gema de Ovo Grande',
      '2 Claras de Ovo Grandes',
      '1 Pitada de Creme de Tártaro',
      '1 colher de sopa de Açúcar',
    ],
    steps: [
      'Preaqueça o forno a 190°C. Forre uma assadeira com papel manteiga.',
      'Pincele o fundo e os lados de 2 ramequins levemente com 1 colher de chá de manteiga derretida; cubra o fundo e os lados até a borda.',
      'Adicione 1 colher de sopa de açúcar aos ramequins. Gire os ramequins até que o açúcar cubra todas as superfícies.',
      'Coloque os pedaços de chocolate em uma tigela de metal.',
      'Coloque a tigela sobre uma panela com cerca de 3 xícaras de água quente em fogo baixo.',
      'Derreta 1 colher de sopa de manteiga em uma frigideira em fogo médio. Polvilhe a farinha de trigo. Mexa até que a farinha seja incorporada à manteiga e a mistura engrosse.',
      'Misture o leite frio até que a mistura fique lisa e engrosse. Transfira a mistura para a tigela com chocolate derretido.',
      'Adicione sal e pimenta caiena. Misture bem. Adicione a gema de ovo e misture.',
      'Deixe a tigela sobre a água quente (não fervente) para manter o chocolate quente enquanto você bate as claras em neve.',
      'Coloque 2 claras de ovo em uma tigela; adicione creme de tártaro. Bata até a mistura começar a engrossar e um fio do batedor ficar na superfície por cerca de 1 segundo antes de desaparecer na mistura.',
      'Adicione 1/3 do açúcar e bata. Adicione mais um pouco de açúcar cerca de 15 segundos depois.',
      'Bata o restante do açúcar. Continue batendo até que a mistura fique mais espessa como creme de barbear e forme picos suaves, de 3 a 5 minutos.',
      'Transfira um pouco menos da metade das claras em neve para o chocolate.',
      'Misture até que as claras em neve estejam totalmente incorporadas ao chocolate.',
      'Adicione o restante das claras em neve; misture delicadamente com uma espátula, levantando de baixo para cima.',
      'Pare de misturar depois que as claras em neve desaparecerem. Divida a mistura entre os 2 ramequins preparados. Coloque os ramequins na assadeira preparada.',
      'Asse em forno preaquecido até que os suflês estejam inchados e tenham subido acima da borda, de 12 a 15 minutos.',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm10',
    categories: ['c2', 'c5', 'c10'],
    title: 'Salada de Aspargos com Tomate-Cereja',
    cost: Cost.caro,
    complexity: Complexity.simples,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/04/09/18/26/asparagus-3304997_1280.jpg',
    duration: 30,
    ingredients: [
      'Aspargos Brancos e Verdes',
      '30g de Pinhões',
      '300g de Tomate-Cereja',
      'Salada',
      'Sal, Pimenta e Azeite de Oliva'
    ],
    steps: [
      'Lave, descasque e corte os aspargos',
      'Cozinhe em água com sal',
      'Tempere os aspargos com sal e pimenta',
      'Dourea os pinhões',
      'Corte os tomates-cereja ao meio',
      'Misture os aspargos, os tomates e a salada com o molho',
      'Sirva com Baguete'
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
];

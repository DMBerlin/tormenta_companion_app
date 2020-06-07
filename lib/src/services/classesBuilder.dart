import 'package:tormenta_companion_app/src/models/ClassesModel.dart';

ClassModel cacador = new ClassModel(
  name: 'Caçador',
  description:
      'O caçador é mais que um mateiro ou rastreador. É um especialista em sobrevivência nos terrenos mais selvagens e inóspitos, capaz de obter alimento e achar abrigo em qualquer lugar. É alguém que estuda, persegue e mata sua presa com paciência e astúcia. Mesmo que não pareça um sábio tradicional, o caçador é uma verdadeira enciclopédia de conhecimentos sobre os ermos. Sabe diferenciar veneno de comida, sabe evitar o território de animais mortíferos ou emboscá-los, sabe manter um grupo inteiro vivo longe da civilização.',
  perks: {
    'Pontos de Vida':
        'Um caçador começa com 16 pontos de vida (+ modificador de Constituição) e ganha 4 PV (+ mod. Con) por nível.',
    'Pontos de Mana': '4 PM por Nível.',
    'Proficiências': 'Armas marciais e escudo.',
    'Perícias': [
      'Sobrevivência',
      {
        'Ou': ['Luta', 'Pontaria'],
      },
      {
        6,
        [
          'Adestramento',
          'Atletismo',
          'Cavalgar',
          'Cura',
          'Fortitude',
          'Furtividade',
          'Iniciativa',
          'Luta',
          'Ofício',
          'Percepção',
          'Pontaria',
          'Reflexos',
        ],
      },
    ],
  },
  abilities: {
    'Trilha': [
      ['Marca da presa +1d4', 'Rastreador'],
      ['Poder de  Caçador'],
      ['Exporador', 'Poder de Caçador'],
      ['Poder de Caçador'],
      ['Caminho do Explorador', 'Marca da Presa +1d8', 'Poder de Caçador'],
      ['Poder de Caçador'],
      ['Explorador', 'Poder de Caçador'],
      ['Poder de Caçador'],
      ['Marca da Presa +1d12', 'Poder de Caçador'],
      ['Poder de Caçador'],
      ['Explorador', 'Poder de Caçador'],
      ['Poder de Caçador'],
      ['Marca da Presa +2d8', 'Poder de Caçador'],
      ['Poder de Caçador'],
      ['Explorador', 'Poder de Caçador'],
      ['Poder de Caçador'],
      ['Marca da Presa +2d10', 'Poder de Caçador'],
      ['Poder de Caçador'],
      ['Explorador', 'Poder de Caçador'],
      ['Mestre Caçador', 'Poder de Caçador'],
    ],
  },
  trail: {
    'Habilidades': {
      'Marca da Presa':
          'Você pode gastar uma ação de movimento e 1 PM para analisar uma criatura em alcance curto. Até o fim da cena, você recebe +1d4 nas rolagens de dano contra essa criatura. A cada quatro níveis, você pode gastar +1 PM para aumentar o bônus de dano (veja a tabela da classe).',
      'Rastreador':
          'Você recebe +2 em Sobrevivência. Além disso, pode se mover com seu deslocamento normal enquanto rastreia sem sofrer penalidades no teste de Sobrevivência.',
      'Poder de Caçador': [
        {
          'Ambidestria':
              'Se estiver usando duas armas (e pelo menos uma delas for leve) e fizer a ação ataque, você pode fazer dois ataques, um com cada arma. Se fizer isso, sofre uma penalidade de –2 em ambos os testes de ataque. Pré-requisito: Des 15.',
        },
        {
          'Aumento de Atributo':
              'Você recebe +2 em um atributo a sua escolha. Você pode escolher este poder várias vezes. A partir da segunda vez que escolhê-lo para o mesmo atributo, o bônus diminui para +1.',
        },
        {
          'Armadilha de Aratraca':
              'A vítima sofre 2d6 pontos de dano de perfuração e fica presa. Uma criatura presa pode escapar com uma ação padrão e um teste de Acrobacia ou Atletismo (CD Sab).',
        },
        {
          'Armadilha de Espinhos':
              'A vítima sofre 6d6 pontos de dano de perfuração. Um teste de Reflexos (CD Sab) reduz o dano à metade.',
        },
        {
          'Armadilha de Laço':
              'A vítima deve fazer um teste de Reflexos (CD Sab). Se passar, fica caída. Se falhar, fica agarrada. Uma criatura agarrada pode se soltar com uma ação padrão e um teste de Força ou Acrobacia (CD Sab).',
        },
        {
          'Armadilha de Rede':
              'Todas as criaturas na área devem fazer um teste de Reflexos (CD Sab) para não ficarem enredadas. Uma vítima pode se libertar com uma ação padrão e um teste de Acrobacia ou Atletismo (CD 25). Além disso, a área ocupada pela rede é considerada terreno difícil.',
        },
        {
          'Arqueiro':
              'Se estiver usando uma arma de ataque à distância, você soma seu bônus de Sabedoria nas rolagens de dano (limitado pelo seu nível). Pré-requisito: Sab 13.',
        },
        {
          'Bote':
              'Se estiver empunhando duas armas e fizer uma investida, você pode pagar 1 PM para fazer um ataque adicional com sua arma secundária. Pré-requisito: Ambidestria, 6º nível de caçador.',
        },
        {
          'Camuflagem':
              'Você pode gastar 2 PM para usar a perícia Furtividade para se esconder mesmo sem cobertura disponível.',
        },
        {
          'Companheiro Animal':
              'Você recebe um companheiro animal. Veja o quadro na página XX. Pré-requisito: treinado em Adestramento.',
        },
        {
          'Chuva de Lâminas':
              'Quando usa Ambidestria, você pode pagar 2 PM para fazer um ataque adicional com sua arma primária. Pré-requisito: Des 19, Ambidestria, 12º nível de caçador.',
        },
        {
          'Emboscar':
              'Você pode gastar 2 PM para realizar uma ação padrão adicional em seu turno. Você só pode usar este poder na primeira rodada de um combate. Pré-requisito: treinado em Furtividade.',
        },
        {
          'Empatia Selvagem':
              'Você pode se comunicar com animais através de linguagem corporal e vocalizações. Você pode usar Adestramento com animais para mudar atitude e pedir favores.',
        },
        {
          'Elo com a Natureza':
              'Você soma seu bônus de Sabedoria em seu total de pontos de mana, e aprende e pode lançar Caminhos da Natureza (atributo-chave Sabedoria). Pré-requisito: Sab 13, 3º nível de caçador.',
        },
        {
          'Escaramuça':
              'Quando se move 6m ou mais, você recebe +2 em Defesa e Reflexos e +1d8 nas rolagens de dano de ataques corpo a corpo e à distância em alcance curto até o início de seu próximo turno. Você não pode usar esta habilidade se estiver vestindo armadura pesada. Pré-requisito: Des 15, 6º nível de caçador.',
        },
        {
          'Escaramuça Superior':
              'Quando usa Escaramuça, seus bônus aumentam para +5 em Defesa e Reflexos e +1d12 em rolagens de dano. Pré-requisito: Escaramuça, 12º nível de caçador.'
        },
        {
          'Erva Curativas':
              'Você pode gastar uma ação completa e uma quantidade de PM a sua escolha (limitado pelo seu bônus de Sabedoria) para aplicar ervas que curam ou desintoxicam em você ou num aliado adjacente. Para cada PM que gastar, cura 2d6 PV. Você pode diminuir a cura em 2d6 para remover qualquer condição envenenado afetando o alvo.',
        },
        {
          'Espreitar':
              'Quando usa a habilidade Marca da Presa, você recebe um bônus de +1 em testes de perícia contra a criatura marcada. Esse bônus aumenta em +1 para cada PM adicional gasto na habilidade e também dobra com a habilidade Inimigo.'
        },
        {
          'Ímpeto':
              'Você pode gastar 1 PM para aumentar seu deslocamento em +6m por uma rodada.',
        },
        {
          'Inimigo':
              'Escolha um tipo de criatura entre animal, construto, espírito, monstro ou morto-vivo, ou duas raças humanoides (por exemplo, orcs e gnolls, ou elfos e qareen). Quando você usa a habilidade Marca da Presa contra uma criatura do tipo ou da raça escolhida, recebe dois dados de bônus no dano, em vez de um. O nome desta habilidade varia de acordo com o tipo de criatura escolhida (Inimigo de Monstros, Inimigo de Mortos-Vivos etc.). Você pode escolher este poder outras vezes para inimigos diferentes.',
        },
        {
          'Olho do Falcão':
              'Você pode usar a habilidade Marca da Presa em criaturas em alcance longo.',
        },
        {
          'Ponto Fraco':
              'Quando usa a habilidade Marca da Presa, seus ataques contra a criatura marcada recebem +2 na margem de ameaça. Esse bônus dobra com a habilidade Inimigo.',
        },
      ],
      'Explorador':
          'No 3º nível, escolha um tipo de terreno entre aquático, ártico, colina, deserto, floresta, montanha, pântano, planície, subterrâneo ou urbano. A partir do 11º nível, você também pode escolher área de Tormenta. Quando estiver no tipo de terreno escolhido, você soma seu bônus de Sabedoria (mínimo +1) na Defesa e nos testes de Acrobacia, Atletismo, Furtividade, Percepção e Sobrevivência. A cada quatro níveis, escolha outro tipo de terreno para receber o bônus ou aumente o bônus em um tipo de terreno já escolhido em +2.',
      'Caminho do Explorador':
          'No 5º nível, você pode atravessar terrenos difíceis sem sofrer redução em seu deslocamento e a CD para rastrear você aumenta em +10. Esta habilidade só funciona em terrenos nos quais você tenha a habilidade Explorador.',
      'Mestre Caçador':
          'No 20º nível, você pode usar a habilidade Marca da Presa como uma ação livre. Além disso, quando usa a habilidade, pode gastar +5 PM para aumentar sua margem de ameaça contra a criatura em +2. Se você reduz uma criatura contra a qual usou Marca da Presa a 0 pontos de vida, recupera 5 PM.',
    }
  },
);

List<ClassModel> classesOfTormenta = <ClassModel>[
  cacador,
];

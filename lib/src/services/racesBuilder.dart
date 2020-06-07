import 'package:flutter/material.dart';
import 'package:tormenta_companion_app/src/models/RacesModel.dart';

RacesModel hynne = new RacesModel(
  name: 'Hynne',
  motto:
      'Também conhecidos como halflings ou “pequeninos”, os hynne são apreciadores de boa comida e casas aconchegantes.',
  subRaces: null,
  unlockableAttributes: false,
  attributePenality: [
    {'Força': -2}
  ],
  attributes: [
    {'Carisma': 2},
    {'Destreza': 4}
  ],
  powers: {
    'Arremessador':
        'Quando faz um ataque à distância com uma funda ou uma arma de arremesso, seu dano aumenta em um passo.',
    'Pequeno e rechonchudo':
        'Seu tamanho é Pequeno (veja a página XX) e seu deslocamento é 6m. Você recebe +2 em Enganação e usa o modificador de Destreza para Atletismo (em vez de Força).',
    'Sorte salvadora':
        'Você pode gastar 1 PM para rolar novamente um teste de resistência recém realizado.',
  },
  picture: AssetImage('assets/images/races/Hynne.jpg'),
  description:
      'Também conhecidos como halflings ou “pequeninos”, os hynne são apreciadores de boa comida e casas aconchegantes, raras vezes escolhendo sair pelo mundo em aventuras perigosas. Quando decidem fazê-lo, contudo, recorrem à agilidade e encanto naturais para ludibriar os inimigos — mais de um taverneiro ou miliciano deixou-se enganar por suas mãos ligeiras e sorrisos inocentes. Foram recentemente forçados a fugir de seu antigo reino natal, sendo então acolhidos pelas Repúblicas Livres de Sambúrdia, onde cultivam ervas e especiarias valiosas. Para espanto de todos, também se tornaram astutos mercadores, muitos ascendendo a príncipes mercantes.',
);

RacesModel anao = new RacesModel(
  name: 'Anão',
  motto:
      'Não existe nada mais confiável em Arton que um anão. Cachorros também são confiáveis, mas eu não compararia os dois em frente a um anão se fosse você.',
  subRaces: null,
  unlockableAttributes: false,
  attributePenality: [
    {'Destreza': -2}
  ],
  attributes: [
    {'Constituição': 4},
    {'Sabedoria': 2},
  ],
  powers: {
    'Conhecimento das Rochas':
        'Você recebe visão no escuro e +2 em testes de Percepção e Sobrevivência realizados no subterrâneo.',
    'Devagar e Sempre':
        'Seu deslocamento é 6m (em vez de 9m). Porém, seu deslocamento não é reduzido por uso de armadura ou excesso de carga.',
    'Duro como Pedra':
        'Você recebe +3 pontos de vida no 1º nível e +1 por nível seguinte.',
    'Tradição de Heredrimm':
        'Você é perito nas armas tradicionais anãs, seja por ter treinado com elas, seja por usá-las como ferramentas de ofício. Para você, todos os machados, martelos, marretas e picaretas são armas simples. Você recebe +2 em ataques com essas armas.'
  },
  picture: AssetImage('assets/images/races/Dwarf.jpg'),
  description:
      'Anões são o mais resiliente dos povos. Em suas cidadelas subterrâneas, trabalham duro escavando minas e forjando metal em belas armas, armaduras e joias. São honestos e determinados, honrando a família e a tradição. Apesar de sua profunda paixão por forja e cerveja, pouca coisa é mais preciosa para um anão que cultivar uma barba longa e orgulhosa.',
);

RacesModel humano = new RacesModel(
  name: 'Humano',
  motto:
      'O povo mais numeroso em Arton, humanos são considerados os escolhidos dos deuses, aqueles que governam o mundo.',
  subRaces: null,
  unlockableAttributes: true,
  attributePenality: null,
  attributes: [
    {'Força': 2},
    {'Destreza': 2},
    {'Constituição': 2}
  ],
  powers: {
    'Versátil':
        'Você se torna treinado em duas perícias a sua escolha (não precisam ser da sua classe). Você pode trocar uma dessas perícias por um poder geral a sua escolha.',
  },
  picture: AssetImage('assets/images/races/Human.jpg'),
  description:
      'O povo mais numeroso em Arton, humanos são considerados os escolhidos dos deuses, aqueles que governam o mundo. Em sua variedade e adaptabilidade, são encontrados em quase todos os pontos do continente — dos vales férteis do Reinado às vastidões áridas do Deserto da Perdição. São exploradores e desbravadores ambiciosos, sempre buscando algo além.',
);

RacesModel dahllan = new RacesModel(
  name: 'Dahllan',
  motto:
      'Parte humanas, parte fadas, as dahllan são uma raça de mulheres com a seiva de árvores correndo nas veias.',
  subRaces: null,
  unlockableAttributes: false,
  attributePenality: [
    {'Inteligência': -2},
  ],
  attributes: [
    {'Sabedoria': 4},
    {'Destreza': 2}
  ],
  powers: {
    'Amiga das Plantas':
        'Você pode lançar a magia Controlar Plantas (atributo-chave Sabedoria). Caso aprenda novamente essa magia, seu custodiminui em –1 PM.',
    'Armadura de Allihanna':
        'Você pode gastar uma ação de movimento e 1 PM para transformar sua pele em casca de árvore, recebendo +2 na Defesa até o fim da cena.',
    'Empatia Selvagem':
        'Você pode se comunicar com animais através de linguagem corporal e vocalizações. Você pode usar Adestramento para mudar atitude e pedir favores de animais. Caso receba esta habilidade novamente, recebe +2 em testes de Adestramento',
  },
  picture: AssetImage('assets/images/races/Dahllan.jpg'),
  description:
      'Parte humanas, parte fadas, as dahllan são uma raça de mulheres com a seiva de árvores correndo nas veias. Falam com os animais, controlam as plantas — mas também são ferozes em batalha, retorcendo madeira para formar armaduras.',
);

RacesModel goblin = new RacesModel(
  name: 'Goblin',
  motto:
      'Onde o anão teimoso e o elfo empolado falham, o goblin pode dar um jeito. Porque ele não tem vergonha. Nem orgulho. Nem bom senso.',
  subRaces: null,
  unlockableAttributes: false,
  attributePenality: [
    {'Carisma': -2}
  ],
  attributes: [
    {'Destreza': 4},
    {'Inteligência': 2}
  ],
  powers: {
    'Engenhoso':
        'Você não sofre penalidades em testes de perícia por não usar kits. Se usar o kit, recebe +2 no teste de perícia.',
    'Espelunqueiro':
        'Você recebe visão no escuro e deslocamento de escalada igual ao seu deslocamento terrestre',
    'Peste Esguia':
        'Seu tamanho é Pequeno, mas seu deslocamento se mantém 9m. Apesar de pequenos, goblins são rápidos.',
    'Rato das Ruas':
        'Você recebe +2 em Fortitude e sua recuperação de PV e PM nunca é inferior ao seu nível.'
  },
  picture: AssetImage('assets/images/races/Goblin.jpg'),
  description:
      'Estes pequenos seres feiosos conseguiram um lugar entre os povos do Reinado. Podem ser encontrados em todas as grandes cidades, muitos vivendo na imundície, outros prosperando em carreiras que quase ninguém tentaria: espiões, aeronautas, engenhoqueiros. Onde o anão teimoso e o elfo empolado falham, o goblin pode dar um jeito. Porque ele não tem vergonha. Nem orgulho. Nem bom senso.',
);

RacesModel elf = new RacesModel(
  name: 'Elfo',
  motto:
      'Elfos são seres feitos para a beleza e para a guerra, tão habilidosos com magia quanto com espadas e arcos.',
  subRaces: null,
  unlockableAttributes: false,
  attributePenality: [
    {'Constituição': -2}
  ],
  attributes: [
    {'Inteligência': 4},
    {'Destreza': 2}
  ],
  powers: {
    'Graça de Glórienn': 'Seu deslocamento é 12m (em vez de 9m).',
    'Herança Feérica': 'Você recebe +1 de Mana por nível.',
    'Sentidos Élficos':
        'Você recebe visão na penumbra e +2 em Misticismo e Percepção.',
  },
  picture: AssetImage('assets/images/races/Elf.jpg'),
  description:
      'Elfos são seres feitos para a beleza e para a guerra, tão habilidosos com magia quanto com espadas e arcos. Elegantes, astutos, de vidas quase eternas, parecem superiores aos humanos em tudo. Poderiam ter governado toda Arton, não fosse a arrogância herdada de sua deusa. Com a queda de Glórienn, os elfos se tornaram um povo sem uma deusa. Um povo independente. Enquanto alguns veem a falta de uma divindade como uma tragédia, outros acreditam que, pela primeira vez na história, são livres.',
);

RacesModel lefou = new RacesModel(
  name: 'Lefou',
  motto:
      'Com a influência macabra da Tormenta permeando cada vez mais o mundo, surgiram os lefou. Estes meio-demônios de aparência grotesca passaram a nascer em famílias de outras raças, sendo logo sacrificados ou expulsos.',
  subRaces: null,
  unlockableAttributes: true,
  attributePenality: [
    {'Carisma': -2}
  ],
  attributes: [
    {'Força': 2},
    {'Constituição': 2},
    {'Destreza': 2}
  ],
  powers: {
    'Cria da Tormenta':
        'Você é uma criatura do tipo monstro e recebe +5 em testes de resistência contra efeitos causados por lefeu e pela Tormenta.',
    'Deformidade':
        'Todo lefou possui defeitos físicos que, embora desagradáveis, conferem certas vantagens. Você recebe +2 em duas perícias a sua escolha. Cada um desses bônus conta como um poder da Tormenta. Você pode trocar um desses bônus por um poder da Tormenta a sua escolha. Esta habilidade não causa perda de Carisma.',
  },
  picture: AssetImage('assets/images/races/Lefou.jpg'),
  description:
      'Com a influência macabra da Tormenta permeando cada vez mais o mundo, surgiram os lefou. Estes meio-demônios de aparência grotesca passaram a nascer em famílias de outras raças, sendo logo sacrificados ou expulsos. Entre os que escapam, por sua facilidade em manifestar poderes aberrantes, muitos escolhem abraçar o mal, enquanto outros decidem combatê-lo.',
);

RacesModel minotauro = new RacesModel(
  name: 'Minotauro',
  motto:
      'Povo guerreiro, orgulhoso e poderoso, criadores de uma civilização avançada, com a missão sagrada de proteger e governar os fracos.',
  subRaces: null,
  unlockableAttributes: false,
  attributePenality: [
    {'Sabedoria': -2}
  ],
  attributes: [
    {'Força': 4},
    {'Constituição': 2}
  ],
  powers: {
    'Chifres':
        'Você possui um ataque natural de chifres (dano 1d6, crítico x2, perfuração). Quando usa a ação ataque, pode gastar 1 PM para fazer um ataque corpo a corpo extra com os chifres.',
    'Couro Rígido':
        'Sua pele é dura como a de um touro. Você recebe +1 na Defesa.',
    'Faro':
        'Seu focinho fornece um senso de olfato apurado. Você não fica desprevenido e sofre apenas camuflagem (em vez de camuflagem total) contra inimigos que não possa ver.',
    'Medo de Altura':
        'Se estiver adjacente a uma queda de 3m ou mais de altura (como um buraco ou penhasco), você fica abalado.',
  },
  picture: AssetImage('assets/images/races/Minotaur.jpg'),
  description:
      'Povo guerreiro, orgulhoso e poderoso, criadores de uma civilização avançada, com a missão sagrada de proteger e governar os fracos — ou assim se enxergavam. Em seus tempos áureos, tomaram grande parte de Arton. Hoje, após a morte de sua divindade e a decadência de seu Império, os minotauros lutam para recuperar a glória perdida ou encontrar um novo papel no mundo.',
);

RacesModel quareen = new RacesModel(
  name: 'Quareen',
  motto:
      'Descendentes de poderosos gênios, os qareen são otimistas, generosos e prestativos, sempre ansiosos por ajudar.',
  subRaces: null,
  unlockableAttributes: false,
  attributePenality: [
    {'Sabedoria': -2}
  ],
  attributes: [
    {'Carisma': 4},
    {'Inteligência': 2}
  ],
  powers: {
    'Desejos':
        'Se lançar uma magia atendendo a um desejo (ou seja, lançar uma magia que alguém tenha pedido desde seu último turno), o custo da magia é reduzido em –1 PM. Fazer um desejo ao qareen é uma ação livre.',
    'Resistência Elemental':
        'Conforme sua ascendência, você recebe resistência 10 a um tipo de dano: frio (qareen da água), eletricidade (do ar ou da luz), fogo (do fogo), ácido (da terra) ou trevas (qareen das trevas).',
    'Tatuagem Mística':
        'Você pode lançar uma magia de 1º círculo a sua escolha (atributo-chave Carisma). Caso aprenda novamente essa magia, seu custo diminui em –1 PM.',
  },
  picture: AssetImage('assets/images/races/Quareen.jpg'),
  description:
      'Descendentes de poderosos gênios, os qareen são otimistas, generosos e prestativos, sempre ansiosos por ajudar. Consideram-se abençoados pela Deusa da Magia, exibindo como evidência a marca de Wynna em seus corpos. Sua magia é mais poderosa quando usada para realizar desejos de outros.',
);

RacesModel golem = new RacesModel(
  name: 'Golem',
  motto:
      'Diz-se que estes seres são apenas construtos sem vida, criados não pelos deuses, mas por mortais. No entanto, são movidos por forças vivas — espíritos elementais selvagens, capturados e lacrados por meios mágicos em corpos de pedra e metal.',
  subRaces: null,
  unlockableAttributes: false,
  attributePenality: [
    {'Carisma': -2}
  ],
  attributes: [
    {'Força': 4},
    {'Constituição': 2}
  ],
  powers: {
    'Canalizar Reparos':
        'Como uma ação completa, você pode gastar pontos de mana para recuperar pontos de vida, à taxa de 5 PV por PM.',
    'Chassi Metálico':
        'Você recebe +5 em Defesa. Entretanto, seu deslocamento é 6m, você sofre –2 de penalidade de armadura e é considerado como se estivesse vestindo armadura leve.',
    'Criatura Artificial':
        'Você é uma criatura do tipo construto. Recebe visão no escuro e imunidade a doenças, fadiga, sangramento e venenos. Além disso, não precisa respirar, alimentar-se ou dormir. Por fim, não recupera pontos de vida por descanso e não se beneficia de magias de cura e itens ingeríveis (comidas, poções etc.). Você precisa ficar inerte por oito horas por dia para recarregar sua fonte de energia. Se fizer isso, recupera PM como se tivesse descansado em condições normais (golens não são afetados por condições boas ou ruins de descanso)',
    'Espírito Elemental':
        'Escolha entre água (frio), ar (eletricidade), fogo (fogo) e terra (ácido). Você é imune a dano causado por essa energia. Além disso, se fosse sofrer dano mágico dessa energia, em vez disso cura PV em quantidade igual à metade do dano. Por exemplo, se um golem com espírito elemental do fogo é atingido por uma Bola de Fogo que causa 30 pontos de dano, em vez de sofrer esse dano, ele recupera 15 PV.',
    'Sem Origem':
        'Como uma criatura artificial, você já foi construído “pronto”. Não teve uma infância — portanto, não tem direito a escolher uma origem e receber benefícios por ela.',
  },
  picture: AssetImage('assets/images/races/Golem.jpg'),
  description:
      'Diz-se que estes seres são apenas construtos sem vida, criados não pelos deuses, mas por mortais. No entanto, são movidos por forças vivas — espíritos elementais selvagens, capturados e lacrados por meios mágicos em corpos de pedra e metal. Muitos conformam-se em seus papéis como trabalhadores e soldados, enquanto outros demonstram alta inteligência, personalidade e inciativa. Podem fazer tudo que outras raças fazem, até mesmo conjurar magias arcanas ou divinas. Será que têm alma? Será que encontrarão os deuses quando chegar sua hora?',
);

RacesModel kliren = new RacesModel(
  name: 'Kliren',
  motto:
      'Estes visitantes de outro mundo seriam uma combinação entre humanos e gnomos — mas, afinal, o que é um gnomo? São uma raça que talvez existisse em Arton, não fosse o envolvimento criminoso de seu deus Tilliann na criação da própria Tormenta.',
  subRaces: null,
  unlockableAttributes: false,
  attributePenality: [
    {'Força': -2}
  ],
  attributes: [
    {'Inteligência': 4},
    {'Carisma': 2}
  ],
  powers: {
    'Híbrido':
        'Sua natureza multifacetada fez com que você aprendesse conhecimentos variados. Você se torna treinado em uma perícia a sua escolha (não precisa ser da sua classe).',
    'Lógica Gnômica':
        'Quando faz um teste de atributo ou perícia, você pode gastar 2 PM para substituir o modificador de atributo utilizado por Inteligência. Por exemplo, ao fazer um teste de Atletismo você pode gastar 2 PM para usar seu modificador de Inteligência em vez do modificador de Força.',
    'Ossos Frágeis':
        'Você sofre 1 ponto de dano adicional por dado de dano de impacto. Por exemplo, se for atingido por uma clava (dano 1d6), sofre 1d6+1 pontos de dano. Se cair de 3m de altura (dano 2d6), sofre 2d6+2 pontos de dano.',
    'Vanguardista':
        'Você recebe proficiência em armas de fogo e +2 em testes de Ofício (um qualquer, a sua escolha).',
  },
  picture: AssetImage('assets/images/races/Kliren.jpg'),
  description:
      'Estes visitantes de outro mundo seriam uma combinação entre humanos e gnomos — mas, afinal, o que é um gnomo? São uma raça que talvez existisse em Arton, não fosse o envolvimento criminoso de seu deus Tilliann na criação da própria Tormenta. Seja como for, os kliren somam a alta inteligência gnômica e a curiosidade humana, resultando em seres de extrema engenhosidade, criatividade e talento com aparatos mecânicos. Seriam capazes de grandes feitos, talvez até dominar Arton, não fossem a impulsividade e imprudência que por vezes abreviam suas vidas.',
);

RacesModel medusa = new RacesModel(
  name: 'Medusa',
  motto:
      'Ainda que estas criaturas reclusas sejam famosas por transformar suas vítimas em pedra com um simples olhar, apenas as mais antigas e poderosas o fazem',
  subRaces: null,
  unlockableAttributes: false,
  attributePenality: null,
  attributes: [
    {'Carisma': 4},
    {'Destreza': 2}
  ],
  powers: {
    'Criatura de Megalokk': 'Você é uma criatura do tipo monstro.',
    'Natureza Venenosa':
        'Você recebe resistência a veneno 5 e pode gastar uma ação de movimento e 1 PM para envenenar uma arma que esteja empunhando. A arma causa 1d12 pontos de dano de veneno adicional. O veneno dura até você acertar um ataque ou até o fim da cena (o que vier primeiro).',
    'Olhar Atordoante':
        'Você pode gastar uma ação de movimento e 1 PM para forçar uma criatura em alcance curto a fazer um teste de Fortitude (CD Car). Se a criatura falhar, fica atordoada por 1 rodada. Se passar, fica imune a esta habilidade por um dia.',
  },
  picture: AssetImage('assets/images/races/Medusa.jpg'),
  description:
      'Ainda que estas criaturas reclusas sejam famosas por transformar suas vítimas em pedra com um simples olhar, apenas as mais antigas e poderosas o fazem. Jovens medusas por vezes rejeitam a solidão e crueldade racial, aventurando-se no Reinado, até mesmo fazendo amigos ou integrando equipes de heróis. Conseguem se fazer passar por mulheres humanas, quando escondem o cabelo feito de serpentes. O único povo que não teme medusas são os anões, que as consideram belas musas.',
);

RacesModel osteon = new RacesModel(
  name: 'Osteon',
  motto:
      'Conhecidos coletivamente como osteon, estes esqueletos demonstram a mesma inteligência e consciência das raças vivas, sendo capazes de adotar quaisquer de suas profissões e devoções.',
  subRaces: null,
  unlockableAttributes: true,
  attributePenality: [
    {'Constituição': -2}
  ],
  attributes: [
    {'Força': 2},
    {'Destreza': 2}
  ],
  powers: {
    'Armadura Óssea': 'Você recebe resistência a corte, frio e perfuração 5.',
    'Memória Póstuma':
        'Você se torna treinado em uma perícia (não precisa ser da sua classe) ou recebe um poder geral a sua escolha. Como alternativa, você pode ser um osteon de outra raça humanoide que não humano. Neste caso, você ganha uma habilidade dessa raça a sua escolha. Se a raça era de tamanho Pequeno, você também possui essa categoria de tamanho.',
    'Natureza Esquelética':
        'Você é uma criatura do tipo morto-vivo. Recebe visão no escuro e imunidade a doenças, fadiga, sangramento e venenos. Além disso, não precisa respirar, alimentar-se ou dormir. Por fim, magias e habilidades de cura causam dano em você, mas dano de trevas recupera seus PV e você não se beneficia por itens ingeríveis (comidas, poções etc.).',
    'Preço da Não Vida':
        'Você precisa passar 8 horas sob a luz de estrelas ou no subterrâneo. Se fizer isso, recupera PV e PM como se tivesse descansado em condições normais. Caso contrário, não recupera PV e PM e sofre os mesmos efeitos de fome.'
  },
  picture: AssetImage('assets/images/races/Osteon.jpg'),
  description:
      'Esqueletos sempre foram temidos como monstros profanos, movidos por puro rancor pelos vivos. Isso mudou; conhecidos coletivamente como osteon, estes esqueletos demonstram a mesma inteligência e consciência das raças vivas, sendo capazes de adotar quaisquer de suas profissões e devoções. Alguns atribuem seu surgimento à queda de Ragnar, antigo Deus da Morte; outros dizem ser consequência da ascensão de Ferren Asloth como um poderoso lich, transformando a nação de Aslothia em um reino necromante.',
);

RacesModel sereia = new RacesModel(
  name: 'Sereia',
  motto:
      'Sendo chamadas sereias quando femininas e tritões quando masculinos, os membros desta raça de torso humanoide e corpo de peixe têm a habilidade de adotar uma forma bípede para caminhar em terras emersas.',
  subRaces: null,
  unlockableAttributes: true,
  attributePenality: null,
  attributes: [
    {'Força': 2},
    {'Destreza': 2},
    {'Constituição': 2}
  ],
  powers: {
    'Canção dos Mares':
        'Você pode lançar duas das magias a seguir: Amedrontar, Comandar, Despedaçar, Enfeitiçar, Hipnotismo ou Sono (atributo-chave Carisma). Caso aprenda novamente uma dessas magias, seu custo diminui em –1 PM.',
    'Mestre do Tridente':
        'Para você, o tridente é uma arma simples. Seu dano com lanças e tridentes aumenta em um passo.',
    'Transformação Anfíbia':
        'Você pode respirar debaixo d’água e possui uma cauda que fornece deslocamento de natação 12m. Quando fora d’água, sua cauda desaparece e dá lugar a pernas (deslocamento 9m). Se permanecer mais de um dia sem contato com água, você não recupera PM com descanso até voltar para a água (ou, pelo menos, tomar um bom banho!).'
  },
  picture: AssetImage('assets/images/races/Sereia.jpg'),
  description:
      'Sendo chamadas sereias quando femininas e tritões quando masculinos, os membros desta raça de torso humanoide e corpo de peixe têm a habilidade de adotar uma forma bípede para caminhar em terras emersas — algo que têm feito com cada vez mais frequência. Enquanto seu povo faz guerra contra os humanos e outros seres marinhos, alguns indivíduos enxergam Arton como um mundo misterioso, exótico, cheio de oportunidades e aventuras.',
);

RacesModel silfide = new RacesModel(
  name: 'Sílfide',
  motto:
      'As mais numerosas fadas em Arton são estas criaturinhas (alguns diriam “pestes”) esvoaçantes, com suas delicadas asas de inseto e grandes olhos escuros.',
  subRaces: null,
  unlockableAttributes: false,
  attributePenality: [
    {'Força': -4}
  ],
  attributes: [
    {'Destreza': 4},
    {'Carisma': 2}
  ],
  powers: {
    'Asas de Borboleta':
        'Seu tamanho é Minúsculo. Você pode flutuar a 1,5m do chão com deslocamento 9m. Isso permite que você ignore terreno difícil e o torna imune a dano por queda (a menos que esteja inconsciente). Você pode gastar 1 PM por rodada para voar com deslocamento de 12m.',
    'Espírito da Naturesa':
        'Você é uma criatura do tipo espírito, recebe visão na penumbra e pode falar com animais livremente.',
    'Magia das Fadas':
        'Você pode lançar duas das magias a seguir: Criar Ilusão, Enfeitiçar, Luz (como uma magia arcana) e Sono (atributo-chave Carisma). Caso aprenda novamente uma dessas magias, seu custo diminui em –1 PM.',
  },
  picture: AssetImage('assets/images/races/Silfide.jpg'),
  description:
      'As mais numerosas fadas em Arton são estas criaturinhas (alguns diriam “pestes”) esvoaçantes, com suas delicadas asas de inseto e grandes olhos escuros. Curiosas e brincalhonas, parecem sempre à procura de alguma diversão, levando todos a subestimá-las quando o assunto exige seriedade. É verdade que seu entusiasmo e inocência podem causar problemas. Também é verdade que gostam de usar magias e ilusões para pregar peças. Pensando bem, ninguém até hoje encontrou um bom motivo para aceitar uma sílfide em um grupo de aventureiros.',
);

RacesModel suragel = new RacesModel(
  name: 'Suragel',
  motto:
      'Por serem ligados às forças opostas da luz e trevas, suraggel têm traços diferentes quando orientados para seu lado celestial, sendo então conhecidos como aggelus; ou para o lado abissal, assim sendo chamados sulfure.',
  subRaces: [
    {
      'name': 'Anggelus',
      'isActive': true,
      'attributes': [
        {'Saberodia': 4},
        {'Carisma': 2}
      ],
    },
    {
      'name': 'Sulfure',
      'isActive': false,
      'attributes': [
        {'Destreza': 4},
        {'Inteligência': 2}
      ]
    }
  ],
  unlockableAttributes: false,
  attributePenality: null,
  attributes: [
    {'Saberodia': 4},
    {'Carisma': 2}
  ],
  powers: {
    'Herança Divida':
        'Você é uma criatura do tipo espírito e recebe visão no escuro.',
    'Luz Sagrada (Aggelus)':
        'Você recebe +2 em Diplomacia e Intuição. Além disso, pode lançar Luz (como uma magia divina; atributo-chave Carisma). Caso aprenda novamente esta magia, o custo para lançá-la diminui em –1 PM.',
    'Sombras Profanas (Sulfure)':
        'Você recebe +2 em Enganação e Furtividade. Além disso, pode lançar a magia Escuridão (atributo-chave Inteligência). Caso aprenda novamente esta magia, o custo para lançá-la diminui em –1 PM.',
  },
  picture: AssetImage('assets/images/races/Suragel.jpg'),
  description:
      'Descendentes de extraplanares divinos, esta raça é formada por seres com traços angelicais ou demoníacos — ou ambos. Por serem ligados às forças opostas da luz e trevas, suraggel têm traços diferentes quando orientados para seu lado celestial, sendo então conhecidos como aggelus; ou para o lado abissal, assim sendo chamados sulfure. Sua natureza em geral combina com a descendência, lembrando habitantes dos Reinos dos Deuses, mas eles também podem ser surpreendentes e contraditórios; não se espante muito ao conhecer um aggelus ladino ou um sulfure paladino.',
);

RacesModel trog = new RacesModel(
  name: 'Trog',
  motto:
      'Trogloditas (ou “trogs”) são homens-lagarto primitivos e subterrâneos que odeiam todos os outros seres — especialmente os que sabem forjar aço, aquilo que mais cobiçam.',
  subRaces: null,
  unlockableAttributes: false,
  attributePenality: [
    {'Inteligência': -2}
  ],
  attributes: [
    {'Constituição': 4},
    {'Força': 2}
  ],
  powers: {
    'Mau Cheiro':
        'Você pode gastar uma ação padrão e 2 PM para expelir um gás fétido. Todas as criaturas em alcance curto devem passar em um teste de Fortitude contra veneno (CD Con) ou ficarão enjoadas durante 1d6 rodadas. Uma criatura que passe no teste de resistência fica imune a esta habilidade por um dia.',
    'Mordida':
        'Você possui um ataque natural de mordida (dano 1d6, crítico x2, perfuração). Quando usa a ação ataque, pode gastar 1 PM para fazer um ataque corpo a corpo extra com a mordida.',
    'Repitiliano':
        'Você é uma criatura do tipo monstro e recebe visão no escuro, +1 na Defesa e, se estiver sem armadura ou roupas pesadas, +5 em Furtividade.',
    'Sangue Frio':
        'Você sofre 1 ponto de dano adicional por cada dado de dano de frio'
  },
  picture: AssetImage('assets/images/races/Trog.jpg'),
  description:
      'Trogloditas (ou “trogs”) são homens-lagarto primitivos e subterrâneos que odeiam todos os outros seres — especialmente os que sabem forjar aço, aquilo que mais cobiçam. Suas tribos tramam incursões contra povoados humanos, fazem emboscadas em estradas, atacam exploradores em masmorras. Uns poucos, no entanto, divergem da crueldade e selvageria inerentes à raça. Abandonam a tribo ou são expulsos. Escolhem caminhos surpreendentes, inesperados; tornam-se druidas, ou clérigos, ou bucaneiros, ou sabe-se lá o que mais. Enfim, acabam aceitos como colegas por aventureiros tão estranhos e deslocados quanto eles próprios.',
);

List<RacesModel> racesOfTormenta = <RacesModel>[
  anao,
  dahllan,
  elf,
  goblin,
  golem,
  humano,
  hynne,
  kliren,
  lefou,
  medusa,
  minotauro,
  osteon,
  quareen,
  sereia,
  silfide,
  suragel,
  trog,
];

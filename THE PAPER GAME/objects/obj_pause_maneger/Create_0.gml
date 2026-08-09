
//create
pausado = false;

// Botões do menu
botoes = [
    {
        texto: "CONTINUAR",
        y_offset: -30,
        hover: false,
        acao: "continuar"
    },
    {
        texto: "SAIR DO JOGO",
        y_offset: 30,
        hover: false,
        acao: "sair"
    }
];

botao_selecionado = 0;

// Efeitos steampunk
engrenagem_rotacao = 0;
vapor_timer = 0;
vapor_particles = [];

// Animação de abertura
menu_alpha = 0;
menu_scale = 0.8;
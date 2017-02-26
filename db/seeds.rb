# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

courses_info = [
  "Geografia",
  "Pedagogia",
  "Tecnólogo em Segurança Pública e Social",
  "Tecnologia em Gestão de Turísmo",
  "Tecnologia em Sistemas de Computação"
]

disciplines_info = [
  {
    course: 'Geografia',
    name: "Biogeografia"
  },
  {
    course: 'Geografia',
    name: "Cartografia Básica"
  },
  {
    course: 'Geografia',
    name: "Climatologia Geográfica"
  },
  {
    course: 'Geografia',
    name: "Cultura Brasileira"
  },
  {
    course: 'Geografia',
    name: "Economia Brasileira Contemporânea"
  },
  {
    course: 'Geografia',
    name: "Educação Ambiental"
  },
  {
    course: 'Geografia',
    name: "Educação Especial Inclusiva"
  },
  {
    course: 'Geografia',
    name: "Ensino a Distância em Geografia"
  },
  {
    course: 'Geografia',
    name: "Espaço, Natureza e Sociedade"
  },
  {
    course: 'Geografia',
    name: "Estágio Supervisionado I"
  },
  {
    course: 'Geografia',
    name: "Formação Econômica Brasileira"
  },
  {
    course: 'Geografia',
    name: "Fundamentos da Educação I"
  },
  {
    course: 'Geografia',
    name: "Fundamentos da Educação II"
  },
  {
    course: 'Geografia',
    name: "Fundamentos da Educação IV"
  },
  {
    course: 'Geografia',
    name: "Fundamentos Geográficos do Turismo"
  },
  {
    course: 'Geografia',
    name: "Geografia Agrária"
  },
  {
    course: 'Geografia',
    name: "Geografia Agrária do Brasil"
  },
  {
    course: 'Geografia',
    name: "Geografia da Industria"
  },
  {
    course: 'Geografia',
    name: "Geografia da População"
  },
  {
    course: 'Geografia',
    name: "Geografia da População do Brasil"
  },
  {
    course: 'Geografia',
    name: "Geografia do Ciberespaço"
  },
  {
    course: 'Geografia',
    name: "Geografia do Estado do Rio de Janeiro"
  },
  {
    course: 'Geografia',
    name: "Geografia e Ensino"
  },
  {
    course: 'Geografia',
    name: "Geografia e Sensoriamento Remoto"
  },
  {
    course: 'Geografia',
    name: "Geografia Econômica"
  },
  {
    course: 'Geografia',
    name: "Geografia na Educação I"
  },
  {
    course: 'Geografia',
    name: "Geografia na Educação II"
  },
  {
    course: 'Geografia',
    name: "Geografia Política"
  },
  {
    course: 'Geografia',
    name: "Geografia Urbana"
  },
  {
    course: 'Geografia',
    name: "Geografia Urbana do Brasil"
  },
  {
    course: 'Geografia',
    name: "Geologia Aplicada à Geografia"
  },
  {
    course: 'Geografia',
    name: "Geomorfologia Continental"
  },
  {
    course: 'Geografia',
    name: "Geomorfologia Costeira"
  },
  {
    course: 'Geografia',
    name: "Geomorfologia Geral"
  },
  {
    course: 'Geografia',
    name: "Geoprocessamento"
  },
  {
    course: 'Geografia',
    name: "História da África"
  },
  {
    course: 'Geografia',
    name: "História do Brasil I"
  },
  {
    course: 'Geografia',
    name: "História do Pensamento Geográfico"
  },
  {
    course: 'Geografia',
    name: "Introdução à Informática"
  },
  {
    course: 'Geografia',
    name: "Libras"
  },
  {
    course: 'Geografia',
    name: "Metodologia da Geografia"
  },
  {
    course: 'Geografia',
    name: "Mundo Contemporâneo I"
  },
  {
    course: 'Geografia',
    name: "Mundo Contemporâneo II"
  },
  {
    course: 'Geografia',
    name: "Organização Regional do Brasil"
  },
  {
    course: 'Geografia',
    name: "Planejamento Ambiental"
  },
  {
    course: 'Geografia',
    name: "Planejamento Territorial"
  },
  {
    course: 'Geografia',
    name: "Políticas Públicas em Educação"
  },
  {
    course: 'Geografia',
    name: "Prática de Ensino I"
  },
  {
    course: 'Geografia',
    name: "Prática e Pesquisa em Geografia"
  },
  {
    course: 'Geografia',
    name: "Teoria da Região"
  },
  {
    course: 'Pedagogia',
    name: "Adolescência e Juventude"
  },
  {
    course: 'Pedagogia',
    name: "Alfabetização 1"
  },
  {
    course: 'Pedagogia',
    name: "Alfabetização 2"
  },
  {
    course: 'Pedagogia',
    name: "Artes Visuais"
  },
  {
    course: 'Pedagogia',
    name: "Avaliação do Livro Didático"
  },
  {
    course: 'Pedagogia',
    name: "Avaliação e Educação"
  },
  {
    course: 'Pedagogia',
    name: "Ciências Naturais na Educação 1"
  },
  {
    course: 'Pedagogia',
    name: "Ciências Naturais na Educação 2"
  },
  {
    course: 'Pedagogia',
    name: "Corpo e Movimento na Educação"
  },
  {
    course: 'Pedagogia',
    name: "Currículo"
  },
  {
    course: 'Pedagogia',
    name: "Didática"
  },
  {
    course: 'Pedagogia',
    name: "Dinâmica e Organização Escolar"
  },
  {
    course: 'Pedagogia',
    name: "Educação a Distância"
  },
  {
    course: 'Pedagogia',
    name: "Educação de Jovens e Adultos"
  },
  {
    course: 'Pedagogia',
    name: "Educação e Conservação da Natureza"
  },
  {
    course: 'Pedagogia',
    name: "Educação e Trabalho"
  },
  {
    course: 'Pedagogia',
    name: "Educação Especial"
  },
  {
    course: 'Pedagogia',
    name: "Educação Infantil 1"
  },
  {
    course: 'Pedagogia',
    name: "Educação Infantil 2"
  },
  {
    course: 'Pedagogia',
    name: "Educação para a diversidade"
  },
  {
    course: 'Pedagogia',
    name: "Estágio Curricular 3"
  },
  {
    course: 'Pedagogia',
    name: "Estágio Curricular 4"
  },
  {
    course: 'Pedagogia',
    name: "Filosofia e Educação"
  },
  {
    course: 'Pedagogia',
    name: "Geografia na Educação 1"
  },
  {
    course: 'Pedagogia',
    name: "Geografia na Educação 2"
  },
  {
    course: 'Pedagogia',
    name: "Gestão 1"
  },
  {
    course: 'Pedagogia',
    name: "Gestão 2"
  },
  {
    course: 'Pedagogia',
    name: "História da Educação"
  },
  {
    course: 'Pedagogia',
    name: "História na Educação 1"
  },
  {
    course: 'Pedagogia',
    name: "História na Educação 2"
  },
  {
    course: 'Pedagogia',
    name: "Imagem e Educação"
  },
  {
    course: 'Pedagogia',
    name: "Informática em Educação"
  },
  {
    course: 'Pedagogia',
    name: "Informática Instrumental"
  },
  {
    course: 'Pedagogia',
    name: "Libras"
  },
  {
    course: 'Pedagogia',
    name: "Líng Portug Educ 1"
  },
  {
    course: 'Pedagogia',
    name: "Líng Portug Educ 2"
  },
  {
    course: 'Pedagogia',
    name: "Literatura na Formação do Leitor"
  },
  {
    course: 'Pedagogia',
    name: "Matemática Educação 1"
  },
  {
    course: 'Pedagogia',
    name: "Matemática Educação 2"
  },
  {
    course: 'Pedagogia',
    name: "Metodologia da Pesquisa em Educação"
  },
  {
    course: 'Pedagogia',
    name: "Movimentos Instituintes e Educação"
  },
  {
    course: 'Pedagogia',
    name: "Movimentos Sociais e Educação"
  },
  {
    course: 'Pedagogia',
    name: "Música e Educação"
  },
  {
    course: 'Pedagogia',
    name: "Paulo Freire: Pensamento e Obra"
  },
  {
    course: 'Pedagogia',
    name: "Políticas Públicas em Educação"
  },
  {
    course: 'Pedagogia',
    name: "Português Instrumental"
  },
  {
    course: 'Pedagogia',
    name: "Práticas Edu em Contextos não Escolares"
  },
  {
    course: 'Pedagogia',
    name: "Psicologia e Educação"
  },
  {
    course: 'Pedagogia',
    name: "Psicopedagogia"
  },
  {
    course: 'Pedagogia',
    name: "Sociologia e Educação"
  },
  {
    course: 'Pedagogia',
    name: "Teatro e Educação"
  },
  {
    course: 'Pedagogia',
    name: "Teatro, Educação e Saúde"
  },
  {
    course: 'Pedagogia',
    name: "Tempo Ampliado e Educação Integral"
  },
  {
    course: 'Pedagogia',
    name: "Tendências Contemp Ensino Artes"
  },
  {
    course: 'Pedagogia',
    name: "Tópicos em Educação Especial"
  },
  {
    course: "Tecnologia em Gestão de Turísmo",
    name: "Agenciamento I"
  },
  {
    course: "Tecnologia em Gestão de Turísmo",
    name: "Agenciamento II"
  },
  {
    course: "Tecnologia em Gestão de Turísmo",
    name: "Cultura Brasileira"
  },
  {
    course: "Tecnologia em Gestão de Turísmo",
    name: "Economia e Turismo"
  },
  {
    course: "Tecnologia em Gestão de Turísmo",
    name: "Empreendedorismo"
  },
  {
    course: "Tecnologia em Gestão de Turísmo",
    name: "Espanhol Instr. Aplicado ao Turismo I"
  },
  {
    course: "Tecnologia em Gestão de Turísmo",
    name: "Espanhol Instrumental Aplicado ao Turismo II"
  },
  {
    course: "Tecnologia em Gestão de Turísmo",
    name: "Espanhol Tur: Prod. Oral e Escrita"
  },
  {
    course: "Tecnologia em Gestão de Turísmo",
    name: "Ética"
  },
  {
    course: "Tecnologia em Gestão de Turísmo",
    name: "Filosofia e Turismo"
  },
  {
    course: "Tecnologia em Gestão de Turísmo",
    name: "Fundamentos Geográficos do Turismo"
  },
  {
    course: "Tecnologia em Gestão de Turísmo",
    name: "Gerenciamento de Projetos"
  },
  {
    course: "Tecnologia em Gestão de Turísmo",
    name: "Gestão de Empreend. Turísticos I"
  },
  {
    course: "Tecnologia em Gestão de Turísmo",
    name: "Gestão de Empreend. Turísticos II"
  },
  {
    course: "Tecnologia em Gestão de Turísmo",
    name: "Gestão de Pessoas"
  },
  {
    course: "Tecnologia em Gestão de Turísmo",
    name: "Gestão Financeira em Turismo"
  },
  {
    course: "Tecnologia em Gestão de Turísmo",
    name: "História da Arte"
  },
  {
    course: "Tecnologia em Gestão de Turísmo",
    name: "Introdução à Administração"
  },
  {
    course: "Tecnologia em Gestão de Turísmo",
    name: "Introdução a Informática"
  },
  {
    course: "Tecnologia em Gestão de Turísmo",
    name: "Introdução ao Turismo"
  },
  {
    course: "Tecnologia em Gestão de Turísmo",
    name: "Libras"
  },
  {
    course: "Tecnologia em Gestão de Turísmo",
    name: "Língua Instrumental I - Inglês"
  },
  {
    course: "Tecnologia em Gestão de Turísmo",
    name: "Língua Instrumental II - Inglês"
  },
  {
    course: "Tecnologia em Gestão de Turísmo",
    name: "Linguagem e Trabalho em Turismo"
  },
  {
    course: "Tecnologia em Gestão de Turísmo",
    name: "Marketing Turístico"
  },
  {
    course: "Tecnologia em Gestão de Turísmo",
    name: "Métodos e Técnicas de Pesquisa"
  },
  {
    course: "Tecnologia em Gestão de Turísmo",
    name: "Métodos Estatísticos"
  },
  {
    course: "Tecnologia em Gestão de Turísmo",
    name: "Planejamento e Organização do Turismo"
  },
  {
    course: "Tecnologia em Gestão de Turísmo",
    name: "Política Pública de Turismo"
  },
  {
    course: "Tecnologia em Gestão de Turísmo",
    name: "Projeto de Trab. de Conclusão de Curso"
  },
  {
    course: "Tecnologia em Gestão de Turísmo",
    name: "Relações Interpessoais"
  },
  {
    course: "Tecnologia em Gestão de Turísmo",
    name: "Tecnologias de Planejamento"
  },
  {
    course: "Tecnologia em Gestão de Turísmo",
    name: "Transportes Turísticos I"
  },
  {
    course: "Tecnologia em Gestão de Turísmo",
    name: "Transportes Turísticos II"
  },
  {
    course: "Tecnologia em Gestão de Turísmo",
    name: "Turismo e Inclusão Social"
  },
  {
    course: "Tecnologia em Gestão de Turísmo",
    name: "Turismo e Meio Ambiente"
  },
  {
    course: "Tecnologia em Gestão de Turísmo",
    name: "Turismo e Patrimônio"
  },
  {
    course: "Tecnologia em Gestão de Turísmo",
    name: "Turismo e Sociedade"
  },
  {
    course: "Tecnologia em Gestão de Turísmo",
    name: "Turismo Étnico"
  },
  {
    course: 'Tecnologia em Sistemas de Computação',
    name: "Álgebra Linear"
  },
  {
    course: 'Tecnologia em Sistemas de Computação',
    name: "Análise de Sistemas"
  },
  {
    course: 'Tecnologia em Sistemas de Computação',
    name: "Arquitetura e Projetos de Sistemas"
  },
  {
    course: 'Tecnologia em Sistemas de Computação',
    name: "Banco de Dados"
  },
  {
    course: 'Tecnologia em Sistemas de Computação',
    name: "Computação Gráfica"
  },
  {
    course: 'Tecnologia em Sistemas de Computação',
    name: "Construção de Páginas WEB"
  },
  {
    course: 'Tecnologia em Sistemas de Computação',
    name: "Empreendedorismo e Ética Profissional"
  },
  {
    course: 'Tecnologia em Sistemas de Computação',
    name: "Engenharia de Software"
  },
  {
    course: 'Tecnologia em Sistemas de Computação',
    name: "Estrutura de Dados"
  },
  {
    course: 'Tecnologia em Sistemas de Computação',
    name: "Física para Computação"
  },
  {
    course: 'Tecnologia em Sistemas de Computação',
    name: "Fundamentos de Algoritmos para Computação"
  },
  {
    course: 'Tecnologia em Sistemas de Computação',
    name: "Fundamentos de Programação"
  },
  {
    course: 'Tecnologia em Sistemas de Computação',
    name: "Inglês Instrumental"
  },
  {
    course: 'Tecnologia em Sistemas de Computação',
    name: "Introdução à Informática"
  },
  {
    course: 'Tecnologia em Sistemas de Computação',
    name: "Libras"
  },
  {
    course: 'Tecnologia em Sistemas de Computação',
    name: "Matemática Básica"
  },
  {
    course: 'Tecnologia em Sistemas de Computação',
    name: "Matemática para Computação"
  },
  {
    course: 'Tecnologia em Sistemas de Computação',
    name: "Modelagem da Informação"
  },
  {
    course: 'Tecnologia em Sistemas de Computação',
    name: "Organização de Computadores"
  },
  {
    course: 'Tecnologia em Sistemas de Computação',
    name: "Probabilidade e Estatística"
  },
  {
    course: 'Tecnologia em Sistemas de Computação',
    name: "Programação com Interfaces Gráficas"
  },
  {
    course: 'Tecnologia em Sistemas de Computação',
    name: "Programação de Aplicações Web"
  },
  {
    course: 'Tecnologia em Sistemas de Computação',
    name: "Programação Orientada a Objetos"
  },
  {
    course: 'Tecnologia em Sistemas de Computação',
    name: "Projeto e Desenvolvimento de Algoritmos"
  },
  {
    course: 'Tecnologia em Sistemas de Computação',
    name: "Redes de Computadores I"
  },
  {
    course: 'Tecnologia em Sistemas de Computação',
    name: "Redes de Computadores II"
  },
  {
    course: 'Tecnologia em Sistemas de Computação',
    name: "Sistemas Operacionais"
  },
  {
    course: 'Tecnólogo em Segurança Pública e Social',
    name: "A noção de comunidade e modelos de polícia"
  },
  {
    course: 'Tecnólogo em Segurança Pública e Social',
    name: "Administração Brasileira"
  },
  {
    course: 'Tecnólogo em Segurança Pública e Social',
    name: "Administração de Conflitos Sócio-Ambientais"
  },
  {
    course: 'Tecnólogo em Segurança Pública e Social',
    name: "Análise de Políticas Públicas"
  },
  {
    course: 'Tecnólogo em Segurança Pública e Social',
    name: "Antropologia do Direito"
  },
  {
    course: 'Tecnólogo em Segurança Pública e Social',
    name: "Conflitos e Sociedade"
  },
  {
    course: 'Tecnólogo em Segurança Pública e Social',
    name: "Criminalidades, moralidades, direitos e mercados no Brasil"
  },
  {
    course: 'Tecnólogo em Segurança Pública e Social',
    name: "Discursos de poder e segurança pública"
  },
  {
    course: 'Tecnólogo em Segurança Pública e Social',
    name: "Estado, Direito e Cidadania, em Perspectiva Comparada"
  },
  {
    course: 'Tecnólogo em Segurança Pública e Social',
    name: "Estatística aplicada à Segurança Pública"
  },
  {
    course: 'Tecnólogo em Segurança Pública e Social',
    name: "Gestão em Administração Pública"
  },
  {
    course: 'Tecnólogo em Segurança Pública e Social',
    name: "Introdução à Educação a Distância"
  },
  {
    course: 'Tecnólogo em Segurança Pública e Social',
    name: "Introdução a Informática"
  },
  {
    course: 'Tecnólogo em Segurança Pública e Social',
    name: "Introdução aos Estudos sobre Segurança Pública"
  },
  {
    course: 'Tecnólogo em Segurança Pública e Social',
    name: "Justiça e formas alternativas de administração de conflitos"
  },
  {
    course: 'Tecnólogo em Segurança Pública e Social',
    name: "Libras"
  },
  {
    course: 'Tecnólogo em Segurança Pública e Social',
    name: "Matemática aplicada à Segurança Pública"
  },
  {
    course: 'Tecnólogo em Segurança Pública e Social',
    name: "Metodologia da Pesquisa II"
  },
  {
    course: 'Tecnólogo em Segurança Pública e Social',
    name: "Metodologia de Pesquisa I"
  },
  {
    course: 'Tecnólogo em Segurança Pública e Social',
    name: "Mídia e Segurança Pública"
  },
  {
    course: 'Tecnólogo em Segurança Pública e Social',
    name: "Modelos e instituições de Segurança Pública em uma perspectiva comparada"
  },
  {
    course: 'Tecnólogo em Segurança Pública e Social',
    name: "Oficina de texto em Segurança Pública I"
  },
  {
    course: 'Tecnólogo em Segurança Pública e Social',
    name: "Oficina de texto em Segurança Pública II"
  },
  {
    course: 'Tecnólogo em Segurança Pública e Social',
    name: "Oficina de texto em Segurança Pública III"
  },
  {
    course: 'Tecnólogo em Segurança Pública e Social',
    name: "Oficina de texto em Segurança Pública IV"
  },
  {
    course: 'Tecnólogo em Segurança Pública e Social',
    name: "Políticas Públicas e Grupos em situação de vulnerabilidade"
  },
  {
    course: 'Tecnólogo em Segurança Pública e Social',
    name: "Português Instrumental"
  },
  {
    course: 'Tecnólogo em Segurança Pública e Social',
    name: "Práticas Repressivas e Segurança Pública"
  },
  {
    course: 'Tecnólogo em Segurança Pública e Social',
    name: "Produção de Diagnósticos em Segurança Pública"
  },
  {
    course: 'Tecnólogo em Segurança Pública e Social',
    name: "Produção e Gestão da Informação em Segurança Pública"
  },
  {
    course: 'Tecnólogo em Segurança Pública e Social',
    name: "Sociologia do crime e da violência"
  },
  {
    course: 'Tecnólogo em Segurança Pública e Social',
    name: "Território e Segurança Pública"
  }
]

location = Location.create(name: 'Niterói')

courses = []

courses_info.each do |course_info|
  course = Course.create(name: course_info)
  location.location_courses.create(course: course)
  courses << course
end

disciplines_info.each do |discipline_info|
  course = Course.find_by(name: discipline_info[:course])
  Discipline.create(name: discipline_info[:name], course: course)
end

courses.each do |course|
  course.disciplines.each do |discipline|
    course.course_disciplines.create(discipline: discipline, location: location)
  end
end

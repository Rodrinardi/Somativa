# aproveitar o mesmo cadastramento de usuários do sistema anterior, mantendo as ocupações e os respectivos níveis de acesso;

use formativahogwarts;

# armazenar o link da foto do usuário no sistema
ALTER TABLE usuarios ADD linkFoto varchar(100);
ALTER TABLE usuarios drop column linkFoto;
ALTER TABLE usuarios ADD linkFoto varchar(100) not null;

# adicionar o telefone do usuário no sistema
ALTER TABLE usuarios ADD telefone int not null;

# As tarefas devem possuir os dados básicos como nome da tarefa, descrição, prazo para execução, data de abertura da mesma e data de fim, bem como também de qual ambiente se trata, quem solicitou e qual o status atual da mesma;
create table tarefas(
	idtarefa bigint not null auto_increment,
	nometarefa varchar (200) not null,
    descricao varchar (250) not null,
    prazoExecucao datetime not null,
    dataabertura datetime not null default now(),
    status_tarefa enum ('aberta', 'em andamento', 'concluída', 'encerrada'),
    foto_abertura varchar (200),
    foto_andamento varchar (200),
    foto_concluida varchar (200),
    foto_encerrada varchar (200),
    localFK bigint not null,
    solicitanteFK bigint not null,
    emAndamento datetime not null,
    concluída datetime not null,
    encerrada datetime not null,
    coment_andamento varchar (200) not null,
    coment_concluida varchar (200) not null,
    coment_encerrada varchar (200) not null,
    primary key (idtarefa),
    foreign key (solicitanteFK) references usuarios(id),
    foreign key (localFK) references locais(id)
);
drop table tarefas;

ALTER TABLE tarefas ADD column status_tarefa enum ('aberta', 'em andamento', 'concluída', 'encerrada');
ALTER TABLE tarefas ADD column foto_abertura varchar (200); 
ALTER TABLE tarefas ADD column foto_andamento varchar (200);
ALTER TABLE tarefas ADD column foto_concluida varchar (200);
ALTER TABLE tarefas ADD column foto_encerrada varchar (200);

ALTER TABLE tarefas DROP COLUMN datafechamento;
ALTER TABLE tarefas DROP COLUMN foto_depois; 
select *from tarefas;

ALTER TABLE locais ADD column solicitanteFK bigint;
ALTER TABLE locais ADD column localFK bigint;

select *from locais;
insert into usuario (nometarefa, descricao, prazoExecucao, dataabertura, status_tarefa, foto_abertura, foto_andamento, foto_concluida, foto_encerrada, )values 














select *from usuarios;

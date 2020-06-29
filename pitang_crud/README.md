# Desafio Pitang / SEFAZ

Para o desenvolvimento do sistema, foram utilizados o servidor de aplicações **WildFly 20.0Final** e o Banco Relacional **H2** (in memory) junto com o data source de exemplo _ExampleDS_.

- O build do sistema pode ser feito diretamente via linha de comando utilizando o maven. `mvn clean package` irá gerar o **pitangCRUD.war**

- O deploy pode ser feito diretamente pela console administrativa do WildFly em [localhost:9090].

- O Sistema então poderá ser testato [localhost:8080/usuarios.xhtml]
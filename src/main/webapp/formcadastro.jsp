<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formulário de Cadastro</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <main>
        <h1>Criar Cadastro</h1>
        <div class="social-media">
            <a href="https://accounts.google.com/signin/v2/identifier?hl=pt-BR&continue=https%3A%2F%2Fwww.google.com.br%2F&ec=GAlAmgQ&flowName=GlifWebSignIn&flowEntry=AddSession">
                <img src="google.png" alt="Google">
            </a>
            <a href="https://www.facebook.com/">
                <img src="facebook.png" alt="Facebook">
            </a>
            <a href="https://www.linkedin.com/login/pt?session_redirect=https%3A%2F%2Fwww%2Elinkedin%2Ecom%2Fcompany%2Flogin&fromSignIn=true&trk=organization_guest_nav-header-signin">
                <img src="linkedin.png" alt="Linkedin">
            </a>
        </div>

        <div class="alternativa">
            <span>OU</span>
        </div>
        
        <form action="cadastrar" method="post">
            <label for="name">
                <span>Nome</span>
                <input type="text" id="name" name="name">
            </label>
            <label for="sobrenome">
                <span>Sobrenome</span>
                <input type="text" id="sobrenome" name="sobrenome">
            </label>
            <label for="generos">
                <span>Gêneros</span>
            <select class="generos" id="generos" name="generos">
                <option value="F">Feminino</option>
                <option value="M">Masculino</option>
            </select>
            </label>
            <label for="email">
                <span>E-mail</span>
                <input type="email" id="email" name="email">
            </label>

            <label for="tel">
                <span>Telefone</span>
                <input type="tel" id="tel" name="tel">
            </label>

            <input type="submit" value="cadastrar">
        </form>
    </main>
    <section class="images">
        <img src="mobile3.svg" alt="Mobile">
        <div class="circle"></div>
    </section>
</body>
</html>
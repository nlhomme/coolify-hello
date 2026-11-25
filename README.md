Page de démo pour un talk sur Coolify. Une page statique servie par nginx : la couleur (`COLOR`) et le message (`MESSAGE`) sont injectés au build.
Change `ARG COLOR` dans le `Dockerfile`, commit, puis clique sur **Deploy** dans Coolify.
```bash
docker build --build-arg COLOR="#FFD500" --build-arg MESSAGE="Salut" -t coolify-hello .
docker run --rm -p 8080:80 coolify-hello
```

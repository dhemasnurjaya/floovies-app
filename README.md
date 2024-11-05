# floovies

Search anything about movies and TV shows. Powered by The Movie Database (TMDB).

## Setup

### Environment Variables

These are the environment variables needed to set in order to run the app.

- `PUBLIC_AUTH_KEY`: The public auth key for TMDB API.
- `TMDB_API_SCHEME`: The HTTP scheme for TMDB API.
- `TMDB_API_HOST`: The host for TMDB API.
- `TMDB_API_PORT`: The port for TMDB API.

`launch.json` file in `.vscode` directory is already configured to run the app with these environment variables.
For Android Studio or IntelliJ IDEA, you can set these environment variables in `Run/Debug Configurations`.

```
--dart-define=PUBLIC_AUTH_KEY=public_auth_key
--dart-define=TMDB_API_SCHEME=http
--dart-define=TMDB_API_HOST=10.0.2.2
--dart-define=TMDB_API_PORT=8080
```

Note: `TMDB API` here refers to [tmdb_proxy](https://github.com/dhemasnurjaya/tmdb_proxy) which is a proxy server for TMDB API.
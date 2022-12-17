# Cortar un audio

Usa el formato `hh:mm:ss`, por ejemplo para cortar 2 min de un audio extenso desde un inicio (`-ss`) hasta un final (`-to`), manteniendo el mismo formato `-c copy`.

```bash
ffmpeg -i input.mp3 -ss 01:02:00 -to 01:04:00 -c copy output.mp3
```
> También funciona para otros formatos de audio y vídeo soportados.

## Enlaces

* [Formatos soportados por FFMPEG](https://ffmpeg.org/ffmpeg-formats.html)
* [Documentación de FFMPEG](https://ffmpeg.org/documentation.html)

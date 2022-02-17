FROM aler9/rtsp-simple-server:v0.17.17 AS rtsp

FROM alpine:3.15.0
RUN apk add --no-cache ffmpeg

COPY --from=rtsp /rtsp-simple-server /
COPY /rtsp-simple-server.yml /

ENTRYPOINT [ "/rtsp-simple-server" ]

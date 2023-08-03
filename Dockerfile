FROM node:latest as builder

ARG branch=main

WORKDIR /root/
RUN git clone https://github.com/StarlaneStudios/Surrealist build
WORKDIR /root/build
RUN git checkout ${branch}

RUN npm install -g pnpm
RUN pnpm install
RUN pnpm build

FROM nginx

COPY --from=builder /root/build/dist /usr/share/nginx/html

EXPOSE 80
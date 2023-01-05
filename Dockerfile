FROM gcc AS mybuildstage
COPY getcpufreq.c .
RUN gcc -o getcpufreq getcpufreq.c -static
FROM scratch
COPY --from=mybuildstage getcpufreq .
CMD ["./getcpufreq"]


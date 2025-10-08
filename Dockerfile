# Inherit from an upstream image
FROM pangeo/pangeo-notebook:2025.01.24

COPY environment.yml /tmp/environment.yml

RUN mamba env update --prefix ${CONDA_DIR} --file /tmp/environment.yml

COPY image-tests image-tests
RUN ls

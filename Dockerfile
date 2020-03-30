FROM python:3.8



RUN apt-get -qq update && apt-get -qq install -y libmpc-dev
RUN pip install pipenv

RUN git clone https://gitlab.com/sims1253/linespots-lib.git
RUN mkdir evaluation_projects
RUN cd linespots-lib
RUN pipenv install --dev
RUN pipenv run python linespots/utils/json_builder.py
RUN pipenv run python full_evaluation.py -p 2

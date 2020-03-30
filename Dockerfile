FROM python:3.8

WORKDIR /src


RUN apt-get -qq update && apt-get -qq install -y libmpc-dev
RUN pip install pipenv

RUN git clone https://gitlab.com/sims1253/linespots-lib.git
RUN mkdir evaluation_projects
WORKDIR linespots-lib
RUN git checkout sims/paper
RUN pipenv install --dev --deploy --ignore-pipfile
RUN pipenv run python linespots/utils/json_builder.py

CMD ["pipenv", "run", "python", "full_evaluation.py", "-p", "2"]

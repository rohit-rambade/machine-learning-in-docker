FROM centos
RUN yum install python3 -y
RUN pip3 install pandas
RUN pip3 install -v scikit-learn==0.24.1

COPY salary.py salary.py
COPY salary_model.pkl salary_model.pkl

ENTRYPOINT ["python3", "salary.py"]


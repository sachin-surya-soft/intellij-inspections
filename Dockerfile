FROM gopalkrishnaps/intellij-android:2020.3.1-30


COPY entrypoint.sh /entrypoint.sh
COPY requirements.txt /requirements.txt
COPY analyze_inspections.py /analyze_inspections.py

RUN chmod +x /entrypoint.sh && \
    chmod +x /analyze_inspections.py && \
    pip3 install -r /requirements.txt

ENTRYPOINT ["/entrypoint.sh"]

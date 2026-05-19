from flask import Flask

from prometheus_client import Counter
from prometheus_client import generate_latest
from prometheus_client import CONTENT_TYPE_LATEST

app = Flask(__name__)

REQUESTS = Counter(
    'app_requests_total',
    'Total App Requests'
)

@app.route('/')
def home():

    REQUESTS.inc()

    return "Monitoring App Running"


@app.route('/metrics')
def metrics():

    return generate_latest(), 200, {
        'Content-Type': CONTENT_TYPE_LATEST
    }

if __name__ == '__main__':

    app.run(
        host='0.0.0.0',
        port=8080
    )
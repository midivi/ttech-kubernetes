import argparse
import os
import socket
from http.server import BaseHTTPRequestHandler, HTTPServer


def get_App(message):
    class App(BaseHTTPRequestHandler):
        def __init__(self, *args, **kwargs):
            super().__init__(*args, **kwargs)
            self.message = message

        def do_GET(self, ):
            # Headers.
            self.send_response(200)
            self.send_header('Content-type', 'text/plain')
            # self.send_header('Content-Length', 10)
            self.end_headers()

            # Body.
            user = os.getenv('MOBPRO_USER')
            hostname = socket.gethostname()
            greeting = f'Hello {user}, this is {hostname}.'

            self.wfile.write(greeting.encode())
            self.wfile.write(f'\nMessage: {message}\n'.encode())
    return App


def run_server(message):
    server_address = ('', 8000)
    httpd = HTTPServer(server_address, get_App(message))
    httpd.serve_forever()


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description="Start a ttech server.")
    parser.add_argument(
        '--message',
        required=False,
        default='No message has been configured.',
    )
    args = parser.parse_args()
    print("Listening on port 8000.")
    run_server(args.message)

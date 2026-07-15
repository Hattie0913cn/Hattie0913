from http.server import HTTPServer, BaseHTTPRequestHandler

class Handler(BaseHTTPRequestHandler):
    def do_GET(self):
        self.send_response(200)
        self.send_header('Content-type', 'text/html')
        self.end_headers()
        # 这里可以修改你想显示的网页内容
        message = "<h1>Hello! This is running on K3s (EC2).</h1><p>Deployment successful!</p>"
        self.wfile.write(bytes(message, "utf8"))

if __name__ == '__main__':
    server = HTTPServer(('0.0.0.0', 8080), Handler)
    print("Server started on port 8080")
    server.serve_forever()

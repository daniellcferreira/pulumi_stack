import pulumi
from infra.config import backend_port, frontend_port

# recurso simulado: backend app (não real)
backend_app = pulumi.ComponentResource("custom:app:BackendApp", "backendApp")

# exportando porta e nome do backend
pulumi.export("backend_name", "api-escola-simulado")
pulumi.export("backend_port", backend_port)

# recurso simulado: frontend app (não real)
frontend_app = pulumi.ComponentResource("custom:app:FrontendApp", "frontendApp")

# exportando porta e nome do frontend
pulumi.export("frontend_name", "web-escola-simulado")
pulumi.export("frontend_port", frontend_port)
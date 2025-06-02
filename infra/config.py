import pulumi
import os

config = pulumi.Config()

# tenta ler a porta do Pulumi Config
def get_port(key: str, default: int) -> int:
  port = config.get_int(key)
  if port is not None:
    return port
  
  # tenta da variável de ambiente
  env_port = os.getenv(key.upper())
  if env_port and env_port.isdigit():
    return int(env_port)
  return default

backend_port = get_port("backend_port", 8000)
frontend_port = get_port("frontend_port", 8042)
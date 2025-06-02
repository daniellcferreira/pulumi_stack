import pulumi
import pytest
from pulumi.runtime import set_mocks

class PulumiMocks:
  def new_resource(self, args):
    return {
      "id": args.name,
      "urn": f"urn:pulumi:stack::project::{args.type}::{args.name}",
      **args.inputs
    }
  
  def call(self, args):
    return{}

@pytest.fixture(scope="module", autouse=True)
def pulumi_setup():
  set_mocks(PulumiMocks())

def test_backend_port():
  from infra.config import backend_port
  assert isinstance(backend_port, int)
  assert 8000 <= backend_port <= 65535

def test_frontend_port():
  from infra.config import frontend_port
  assert isinstance(frontend_port, int)
  assert 8000 <= frontend_port <= 655535
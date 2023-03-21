"""
Datastore models
"""
from google.cloud import ndb #<-- allows to define models in our application

class Redirect(ndb.Model):
    """Redirect model."""
    name = ndb.StringProperty()
    destination_url = ndb.StringProperty()
    created_on = ndb.DateTimeProperty(auto_now_add=True)
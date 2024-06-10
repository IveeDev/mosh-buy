from model_bakery import baker
from store.models import Collection
from rest_framework import status
import pytest



@pytest.fixture
def create_collection(api_client):
    def do_create_collection(collection):        
        return api_client.post('/store/collections/', collection)
    return do_create_collection

@pytest.fixture
def update_collection(api_client):
    def do_update_collection(id, collection):
        return api_client.patch(f'/store/collections/{id}/', collection)
    return do_update_collection
    

@pytest.fixture
def delete_collection(api_client):
    def do_delete_collection(id):
        return api_client.delete(f'/store/collections/{id}/')
    return do_delete_collection
    

@pytest.mark.django_db
class TestCreateCollection:
    """Tests for updating collections in the store application."""
    
       # All tests no matter the language has this paradigm which is:
    # AAA -> (Arrange, Act, Assert)

    # Arrange
    # Where we instantiate objs, authentication and database if needed

    # Act
    # Where we kick off the behavior we wanna test

    # Assert
    # Where we check to see if it is the expected behavior
    def test_if_user_is_anonymous_returns_401(self, create_collection):
        
        response = create_collection({'title': 'a'})
        
        assert response.status_code == status.HTTP_401_UNAUTHORIZED
       
    def test_if_user_is_not_admin_returns_403(self, create_collection, authenticate):        
        authenticate(is_staff=False)
        
        response = create_collection({'title': 'a'})
        
        assert response.status_code == status.HTTP_403_FORBIDDEN
        
    def test_if_data_is_invalid_returns_400(self, create_collection, authenticate):
        authenticate(is_staff=True)
        
        response = create_collection({'title': ''})
        
        assert response.status_code == status.HTTP_400_BAD_REQUEST
        assert response.data['title'] is not None
        
    def test_if_data_is_valid_return_201(self, create_collection, authenticate):
        authenticate(is_staff=True)
        
        response = create_collection({'title': 'a'})
        
        assert response.status_code == status.HTTP_201_CREATED
        assert response.data['id'] > 0


@pytest.mark.django_db
class TestUpdateCollection:
    """Tests for updating collections in the store application."""
        
    def test_if_user_is_anonymous_returns_401(self, update_collection):
        """Tests that updating a collection with an anonymous user returns 401."""
        collection = baker.make(Collection)
        data = {'title': 'Updated Title'}    
        
        response = update_collection(collection.id, data) 
        assert response.status_code == status.HTTP_401_UNAUTHORIZED  
    
    
    def test_if_user_is_not_admin_returns_403(self, authenticate, update_collection):
        """Tests that updating a collection with an unauthorized user returns 403."""
        authenticate(is_staff=False)
        
        collection = baker.make(Collection)
        data = {'title': 'Updated Title'}  
        
        response = update_collection(collection.id, data)
        
        assert response.status_code == status.HTTP_403_FORBIDDEN
        
    def test_if_invalid_data_returns_400(self, authenticate, update_collection):
        """Tests that updating a collection with an authorized user but invalid data returns 400."""
        authenticate(is_staff=True)
        
        collection = baker.make(Collection)
        data = {'title': ''} 
        
        response = update_collection(collection.id, data)
        
        assert response.status_code == status.HTTP_400_BAD_REQUEST
        assert response.data['title'] is not None
        
    def test_if_valid_data_returns_200(self, authenticate, update_collection):
        """Tests that updating a collection with an authorized user and valid data returns 400."""
        authenticate(is_staff=True)
        
        collection = baker.make(Collection)
        data = {'title': 'updated title'}
        
        response = update_collection(collection.id, data)
        
        assert response.status_code == status.HTTP_200_OK
        assert response.data == {
        "id": collection.id,
        "title": 'updated title',
        "products_count": 0,
        }
        

@pytest.mark.django_db
class TestRetrieveCollection: 
    def test_if_collection_exits_returns_200(self, api_client):
        
        collection = baker.make(Collection)
        response = api_client.get(f'/store/collections/{collection.id}/')
        
        assert response.status_code == status.HTTP_200_OK
        
        assert response.data == {
            'id': collection.id,
            'title': collection.title,
            'products_count': 0
        }
    
    def test_if_collection_does_not_exist_returns_404(self, api_client):
            response = api_client.get('/store/collections/999999/')
            assert response.status_code == status.HTTP_404_NOT_FOUND

@pytest.mark.django_db
class TestDeleteCollection:
    def test_if_user_is_anonymous_returns_401(self, delete_collection):
        collection = baker.make(Collection)
        
        response = delete_collection(collection.id)
        assert response.status_code == status.HTTP_401_UNAUTHORIZED
        
    def test_if_user_is_not_admin_returns_403(self, authenticate, delete_collection):
        
        authenticate(is_staff=False)
        
        collection = baker.make(Collection)
        
        response = delete_collection(collection.id)
        
        assert response.status_code == status.HTTP_403_FORBIDDEN
        
    def test_if_collection_exists_returns_204(self, authenticate, delete_collection):
        authenticate(is_staff=True)
        
        collection = baker.make(Collection)
        
        response = delete_collection(collection.id)
        
        assert response.status_code == status.HTTP_204_NO_CONTENT
    
    def test_if_invalid_id_returns_404(self, authenticate, delete_collection):
        authenticate(is_staff=True)
        response = delete_collection(999999)
        assert response.status_code == status.HTTP_404_NOT_FOUND
        
        
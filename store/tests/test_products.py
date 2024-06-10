from model_bakery import baker
from decimal import Decimal
from model_bakery import baker
from store.models import Product, Collection
from rest_framework import status
import pytest




@pytest.fixture
def create_product(api_client):
    def do_create_product(product):
        return api_client.post('/store/products/', product)
    return do_create_product



@pytest.fixture
def update_product(api_client):
    def do_update_product(id, product):
        return api_client.patch(f'/store/products/{id}/', product)
    return do_update_product

@pytest.fixture
def delete_product(api_client):
    def do_delete_product(id):
        return api_client.delete(f'/store/products/{id}/')
    return do_delete_product

@pytest.mark.django_db
class TestCreateProduct:
    def test_if_user_is_anonymous_returns_401(self, create_product):
        
        product_dict = {
            'title': 'a',
            'description': 'aaa',
            'unit_price': 10.00,
            'inventory': 2
        }
        
        response = create_product(product_dict)
        
        assert response.status_code == status.HTTP_401_UNAUTHORIZED
        
    def test_if_user_is_not_admin_returns_403(self, authenticate, create_product):
        authenticate(is_staff=False)
        
        product_dict = {
            'title': 'a',
            'description': 'aaa',
            'unit_price': 10.00,
            'inventory': 2
        }
        
        response = create_product(product_dict)
        
        assert response.status_code == status.HTTP_403_FORBIDDEN
        
    def test_if_data_is_invalid_returns_400(self, authenticate, create_product):
        authenticate(is_staff=True)
        
        product_dict = {
            'title': '',
            'description': 'aaa',
            'unit_price': '',
            'inventory': 2
        }
        
        response = create_product(product_dict)
        
        assert response.status_code == status.HTTP_400_BAD_REQUEST
        assert response.data['title'] is not None
        assert response.data['unit_price'] is not None
    
    def test_if_data_is_valid_returns_201(self, authenticate, create_product):
        authenticate(is_staff=True)
        
        collection = baker.make(Collection)
        
        product_dict = {
            'title': 'a',
            'description': 'aaa',
            'unit_price': 10.00,
            'inventory': 2,
            'slug': '-',
            'collection': collection.id,
            'images': []
        }
        
        response = create_product(product_dict)
        
        
        assert response.status_code == status.HTTP_201_CREATED
        assert response.data['id'] > 0

@pytest.mark.django_db
class TestRetrieveProduct:
    def test_if_product_exists_returns_200(self, api_client):
        product = baker.make(Product)
        
        response = api_client.get(f'/store/products/{product.id}/')
        
        
        assert response.status_code == status.HTTP_200_OK
        
        assert response.data == {
            'id': product.id,
            'title': product.title,
            'collection': product.collection_id,
            'price_with_tax': Decimal(product.unit_price) * Decimal(1.1),
            'description': product.description,
            'unit_price': Decimal(product.unit_price),
            'inventory': product.inventory,
            'images': [],
            'slug': product.slug
        }
        
    def test_if_product_does_not_exist_returns_404(self, api_client):
        response = api_client.get('/store/products/999999/')
        assert response.status_code == status.HTTP_404_NOT_FOUND
        
@pytest.mark.django_db        
class TestUpdateProduct:
    
    def test_if_user_is_anonymous_returns_401(self, update_product):
        product = baker.make(Product)
        data = {'title': 'Updated product-name', 'unit_price': 20.00}
        
        response = update_product(product.id, data)
        
        assert response.status_code == status.HTTP_401_UNAUTHORIZED
        
    def test_if_user_is_not_admin_returns_403(self, authenticate, update_product):
        authenticate(is_staff=False)
        product = baker.make(Product)
        
        data = {'title': 'Updated product-name', 'unit_price': 20.00}
        
        response = update_product(product.id, data)
        
        assert response.status_code == status.HTTP_403_FORBIDDEN
        
    def test_if_invalid_data_returns_400(self, authenticate, update_product):
        authenticate(is_staff=True)
        product = baker.make(Product)
    
        data = {'title': '', 'unit_price': 20.00}
        response = update_product(product.id, data)
        
        assert response.status_code == status.HTTP_400_BAD_REQUEST
        assert response.data['title'] is not None    
    
    def test_if_valid_data_return_200(self, authenticate, update_product):
        authenticate(is_staff=True)
        
        product = baker.make(Product)
        
        data = {'title': 'Updated product-name', 'unit_price': Decimal(20.00)}
        
        response = update_product(product.id, data)
        print(response.data)
        
        assert response.status_code == status.HTTP_200_OK
        assert response.data == {
            "id": product.id,
            "title": "Updated product-name",
            "unit_price": Decimal(20.00),
            "description": product.description,
            "inventory": product.inventory,
            "collection": product.collection_id,
            "slug": product.slug,
            "price_with_tax": Decimal(20.00) * Decimal(1.1),
            "images": []
        }

@pytest.mark.django_db
class TestDeleteProduct:
    def test_if_user_is_anonymous_returns_401(self, delete_product):
        product = baker.make(Product)
        
        response = delete_product(product.id)
        
        assert response.status_code == status.HTTP_401_UNAUTHORIZED
        
    def test_if_user_is_not_admin_returns_403(self, authenticate, delete_product):
        authenticate(is_staff=False)
        
        product = baker.make(Product)
        
        response = delete_product(product.id)
        assert response.status_code == status.HTTP_403_FORBIDDEN
        
    def test_if_product_exists_returns_204(self, authenticate, delete_product):
        authenticate(is_staff=True)
        product = baker.make(Product)
        
        response = delete_product(product.id)
        
        assert response.status_code == status.HTTP_204_NO_CONTENT
        
    def test_if_invalid_id_returns_404(self, authenticate, delete_product):
        authenticate(is_staff=True)
        response = delete_product(999999)
        assert response.status_code == status.HTTP_404_NOT_FOUND
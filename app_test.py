from app import app

client = app.test_client()


def test_get_index_status_200():
    res = client.get("/index?echo=testing123")
    assert res.status_code == 200


def test_get_index_content_200():
    res = client.get("/index?echo=testing123")
    assert res.get_data() == b'{"echo":"testing123"}\n'

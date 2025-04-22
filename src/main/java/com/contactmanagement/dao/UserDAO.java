package com.contactmanagement.dao;

import com.mongodb.client.*;
import org.bson.Document;
import com.contactmanagement.model.User;

public class UserDAO {
    private MongoCollection<Document> collection;

    public UserDAO() {
        MongoClient client = MongoClients.create("mongodb://localhost:27017");
        MongoDatabase db = client.getDatabase("contactdb");
        collection = db.getCollection("users");
    }

    public void addUser(User user) {
        Document doc = new Document("username", user.getUsername())
                       .append("password", user.getPassword());
        collection.insertOne(doc);
    }

    public boolean userExists(String username) {
        Document query = new Document("username", username);
        return collection.find(query).first() != null;
    }

    public boolean validateUser(String username, String password) {
        Document query = new Document("username", username).append("password", password);
        return collection.find(query).first() != null;
    }
}

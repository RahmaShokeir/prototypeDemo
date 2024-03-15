<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="prototypeDemo.Prototype" %>
<%@ page import="prototypeDemo.Button" %>
<%@ page import="prototypeDemo.PrototypeRegistry" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Prototype Demo</title>
</head>
<body>
    <h1>Prototype Demo</h1>
    <%
        // Create a new PrototypeRegistry
        PrototypeRegistry registry = new PrototypeRegistry();

        // Create a Button prototype
        Button redButtonPrototype = new Button(10, 40, "red");

        // Add the Button prototype to the registry
        registry.addItem("LandingButton", redButtonPrototype);

        // Retrieve a clone of the red Button prototype from the registry
        Button clonedButton = (Button) registry.getByColor("red");

        // Display the properties of the cloned Button
        if (clonedButton != null) {
            out.println("Cloned Button: x=" + clonedButton.getX() + ", y=" + clonedButton.getY() + ", color=" + clonedButton.getColor());
        } else {
            out.println("No Button prototype with color 'red' was found in the registry.");
        }
    %>
</body>
</html>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Register Customer</h1>

            <p class="lead">Please fill in your information below:</p>
        </div>

        <form:form action="${pageContext.request.contextPath}/register" method="post"
                   commandName="customer" >

        <h3>Basic Info</h3>

        <div class="form-group">
            <label for="name">Name</label>
            <form:errors path="customerName" cssStyle="color: #ff0000" />
            <form:input path="customerName" id="name" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="email">Email</label><span style="color: #ff0000">${emailMsg}</span>
            <form:errors path="customerEmail" cssStyle="color: #ff0000" />
            <form:input path="customerEmail" id="email" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="phone">Phone</label>
            <form:input path="customerPhone" id="phone" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="username">Username</label><span style="color: #ff0000">${usernameMsg}</span>
            <form:errors path="username" cssStyle="color: #ff0000"/>
            <form:input path="username" id="username" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="password">Password</label><span style="color: #ff0000">${passwordMsg}</span>
            <form:errors path="password" cssStyle="color: #ff0000" />
            <form:password path="password" id="password" class="form-Control"/>
        </div>

        <h3>Shipping Address</h3>

        <div class="form-group">
            <label for="shippingStreet">Street Name</label><span style="color: #ff0000">${shippingAddressMsg}</span>
            <form:errors path="shippingAddress.streetName" cssStyle="color: #ff0000" />
            <form:input path="shippingAddress.streetName" id="shippingStreet" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="shippingApartmentNumber">Apartment Number</label>
            <form:input path="shippingAddress.apartmentNumber" id="shippingApartmentNumber" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="shippingCity">City</label><span style="color: #ff0000">${shippingAddressMsg}</span>
            <form:errors path="shippingAddress.city" cssStyle="color: #ff0000" />
            <form:input path="shippingAddress.city" id="shippingCity" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="shippingState">State</label><span style="color: #ff0000">${shippingAddressMsg}</span>
            <form:errors path="shippingAddress.state" cssStyle="color: #ff0000" />
            <form:input path="shippingAddress.state" id="shippingState" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="shippingCountry">Country</label><span style="color: #ff0000">${shippingAddressMsg}</span>
            <form:errors path="shippingAddress.country" cssStyle="color: #ff0000" />
            <form:input path="shippingAddress.country" id="shippingCountry" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="shippingZip">Zipcode</label><span style="color: #ff0000">${shippingAddressMsg}</span>
            <form:errors path="shippingAddress.zipCode" cssStyle="color: #ff0000" />
            <form:input path="shippingAddress.zipCode" id="shippingZip" class="form-Control"/>
        </div>

        <h3>Credit Card Info</h3>

        <div class="form-group">
            <label for="creditCardNumber">Credit Card Number</label>
            <form:errors path="creditCard.creditCardNumber" cssStyle="color: #ff0000" />
            <form:input path="creditCard.creditCardNumber" id="creditCardNumber" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="creditCardName">Name on the Credit Card</label>
            <form:errors path="creditCard.creditCardName" cssStyle="color: #ff0000" />
            <form:input path="creditCard.creditCardName" id="creditCardName" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="expirationMonth">Expiration Month</label>
            <form:errors path="creditCard.expirationMonth" cssStyle="color: #ff0000" />
            <form:input path="creditCard.expirationMonth" id="expirationMonth" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="expirationYear">Expiration Year</label>
            <form:errors path="creditCard.expirationYear" cssStyle="color: #ff0000" />
            <form:input path="creditCard.expirationYear" id="expirationYear" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="cardVerificationValue">CVV</label>
            <form:errors path="creditCard.cardVerificationValue" cssStyle="color: #ff0000" />
            <form:input path="creditCard.cardVerificationValue" id="cardVerificationValue" class="form-Control"/>
        </div>

        <br><br>
        <input type="submit" value="submit" class="btn btn-default">
        <a href="<c:url value="/" />" class="btn btn-default">Cancel</a>
        </form:form>


        <%@include file="/WEB-INF/views/template/footer.jsp" %>

global class SoapDemo {
    webservice static Id makeCOntact(string contacLastName, Account a){
        Contact c = new Contact(lastname = contacLastName, AccountId =a.Id);
        insert c;
        return c.Id;
    }
}
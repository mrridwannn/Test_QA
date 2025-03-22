class RegisterPage {
    visit() {
        cy.visit("http://localhost/somethinc/register.php");
    }

    fillForm(user) {
        cy.get('input[name="first_name"]').clear().type(user.first_name);
        cy.get('input[name="last_name"]').clear().type(user.last_name);
        cy.get('input[name="email"]').clear().type(user.email);
        cy.get('input[name="password"]').clear().type(user.password);
        cy.get('input[name="confirm_password"]').clear().type(user.confirm_password);
        cy.get('select[name="gender"]').select("Male");
        cy.get('select[name="birth_day"]').select("6");
        cy.get('select[name="birth_month"]').select("7");
        cy.get('select[name="birth_year"]').select("2000");
    }

    submit() {
        cy.get('button[type="submit"]').click();
    }

    getErrorMessage() {
        return cy.get('div[id="alert-message"]');
    }
}

export default new RegisterPage();

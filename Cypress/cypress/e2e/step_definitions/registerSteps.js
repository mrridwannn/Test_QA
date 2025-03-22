import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";
import RegisterPage from "../page_objects/registerPage";

Given("pengguna membuka halaman register", () => {
    RegisterPage.visit();
});

When("pengguna mengisi semua field dengan data valid", () => {
    cy.fixture("users").then((data) => {
        RegisterPage.fillForm(data.validUser);
    });
    RegisterPage.submit();
});

When("pengguna menginput email yang sudah terdaftar", () => {
    cy.fixture("users").then((data) => {
        RegisterPage.fillForm({ ...data.validUser, email: data.existingEmail });
    });
    RegisterPage.submit();
});

When("pengguna menginput email temporary", () => {
    cy.fixture("users").then((data) => {
        RegisterPage.fillForm({ ...data.validUser, email: data.temporaryEmail });
    });
    RegisterPage.submit();
});

Then("registrasi berhasil", () => {
    cy.url().should('include', '/index.php?message=Registrasi%20berhasil!&type=success');
    cy.get('div[id="alert-message"]').should('contain.text', 'Registrasi berhasil!');
});

Then("muncul pesan error Email sudah terdaftar!", () => {
    cy.get('div[id="alert-message"]').should("contain.text", 'Email sudah terdaftar!');
});

Then("muncul pesan error Email tidak diperbolehkan", () => {
    cy.get('div[id="alert-message"]').should("contain.text", 'Email tidak diperbolehkan');
});



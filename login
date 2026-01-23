#include <stdio.h>
#include <string.h>

// Function to validate login
int validateLogin(char username[], char password[]) {
    // Predefined correct credentials
    char correctUsername[] = "admin";
    char correctPassword[] = "12345";

    if (strcmp(username, correctUsername) == 0 && strcmp(password, correctPassword) == 0) {
        return 1; // Login successful
    } else {
        return 0; // Login failed
    }
}

int main() {
    char username[20], password[20];

    printf("Enter Username: ");
    scanf("%s", username);

    printf("Enter Password: ");
    scanf("%s", password);

    if (validateLogin(username, password)) {
        printf("\nLogin Successful! Welcome %s.\n", username);
    } else {
        printf("\nInvalid Username or Password. Try again.\n");
    }

    return 0;
}

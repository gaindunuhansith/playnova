package validationInterface;

public class ReviewValidator implements Validator {
	private String username, email, game, review;
	float rating;
    private String errorMessage = "";

    public ReviewValidator(String username, String email, String game, float rating, String review) {
        this.username = username;
        this.email = email;
        this.game = game;
        this.rating = rating;
        this.review = review;
    }

    @Override
    public boolean isValid() {
        if (!username.matches("[a-zA-Z0-9_]+")) {
            errorMessage = "Username must contain only letters, numbers, or underscores.";
            return false;
        }

        if (!email.matches("^[\\w.-]+@[\\w.-]+\\.\\w{2,}$")) {
            errorMessage = "Invalid email format.";
            return false;
        }

        if (game == null || game.trim().isEmpty()) {
            errorMessage = "Game field cannot be empty.";
            return false;
        }

        
        if (review == null || review.length() < 10) {
            errorMessage = "Review must be at least 10 characters long.";
            return false;
        }

        return true;
    }

    @Override
    public String getErrorMessage() {
        return errorMessage;
    }

}

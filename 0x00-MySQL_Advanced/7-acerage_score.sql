-- Create the stored procedure
DELIMITER //

CREATE PROCEDURE ComputeAverageScoreForUser (
    IN user_id INT
)
BEGIN
    DECLARE total_score FLOAT;
    DECLARE total_count INT;

    -- Calculate total score and count for the user
    SELECT SUM(score), COUNT(*) INTO total_score, total_count
    FROM corrections
    WHERE user_id = user_id;

    -- Update the average score for the user
    UPDATE users
    SET average_score = IF(total_count > 0, total_score / total_count, 0)
    WHERE id = user_id;
END;
//

DELIMITER ;

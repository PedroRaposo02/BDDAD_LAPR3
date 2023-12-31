-- Declare a variable to store the result
DECLARE
    V_RESULT NUMBER;

BEGIN
    -- Call the function and store the result in the variable
    V_RESULT := FETCH_CULTURA_ID(1, 2, SYSDATE);

    -- Print the result
    DBMS_OUTPUT.PUT_LINE('Cultura ID: ' || V_RESULT);
END;
/
-- Ex 01 com CASE
DO $$
DECLARE
	num INT := valor_aleatorio_entre(1,100);
BEGIN
	RAISE NOTICE 'O número gerado é: %', num;
	CASE 
		WHEN num % 3 = 0 THEN  
			RAISE NOTICE 'O número % é um multiplo de 3', num;
		ELSE 
			RAISE NOTICE 'O número % não é um multiplo de 3', num;
	END CASE;
END;
$$
	
-- Ex 01 com IF
DO $$
DECLARE
	num INT := valor_aleatorio_entre(1,100);
BEGIN
	RAISE NOTICE 'O número gerado é: %', num;
	IF num % 3 = 0 THEN
		RAISE NOTICE 'O valor % é um multiplo de 3', num;
	ELSE
		RAISE NOTICE 'O valor % não é um multiplo de 3', num;
	END IF;
END;
$$

-- CREATE OR REPLACE FUNCTION valor_aleatorio_entre(lim_inferior INT, lim_superior INT) RETURNS INT AS
-- $$
-- BEGIN 
-- 	RETURN FLOOR(random() * (lim_superior - lim_inferior + 1) + lim_inferior)::INT;
-- END
-- $$ LANGUAGE plpgsql;

-- SELECT valor_aleatorio_entre(2,10);
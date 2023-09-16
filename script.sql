-- Ex04 com CASE
DO $$ 
DECLARE
	valor_produto NUMERIC(5,2):= valor_aleatorio_entre(1,50);
	lucro NUMERIC(5,2);
	valor_venda NUMERIC(5,2);
BEGIN
	CASE 
		WHEN valor_produto < 20 THEN
		lucro := valor_produto * 0.45;
		valor_venda := valor_produto + lucro;
		RAISE NOTICE 'O produto custou: %', valor_produto;
		RAISE NOTICE 'O lucro vai ser de: %', lucro;
		RAISE NOTICE 'O valor da venda vai ser: %', valor_venda;
	ELSE
		lucro := valor_produto * 0.30;
		valor_venda := valor_produto + lucro;
		RAISE NOTICE 'O produto custou: %', valor_produto;
		RAISE NOTICE 'O lucro vai ser de: %', lucro;
		RAISE NOTICE 'O valor da venda vai ser: %', valor_venda;
	END CASE;
END;
$$

-- Ex04 com IF
DO $$
DECLARE
	valor_produto NUMERIC(5,2):= valor_aleatorio_entre(1,50);
	lucro NUMERIC(5,2);
	valor_venda NUMERIC(5,2);
BEGIN
	IF valor_produto < 20 THEN
		lucro := valor_produto * 0.45;
		valor_venda := valor_produto + lucro;
		RAISE NOTICE 'O produto custou: %', valor_produto;
		RAISE NOTICE 'O lucro vai ser de: %', lucro;
		RAISE NOTICE 'O valor da venda vai ser: %', valor_venda;
	ELSE
		lucro := valor_produto * 0.30;
		valor_venda := valor_produto + lucro;
		RAISE NOTICE 'O produto custou: %', valor_produto;
		RAISE NOTICE 'O lucro vai ser de: %', lucro;
		RAISE NOTICE 'O valor da venda vai ser: %', valor_venda;
	END IF;
END;
$$

-- Ex 03 com CASE
-- DO $$
-- DECLARE
-- 	num1 INT := valor_aleatorio_entre(1,100);
-- 	num2 INT := valor_aleatorio_entre(1,100);
-- 	evento INT := valor_aleatorio_entre(1,4);
-- 	soma INT;
-- 	subtracao INT;
-- 	multiplicacao INT;
-- 	divisao NUMERIC(5,2);
-- BEGIN
-- 	RAISE NOTICE '1- SOMA / 2- SUBTRACAO / 3- MULTIPLICACAO / 4- DIVISAO';
-- 	CASE 
-- 		WHEN evento = 1 THEN
-- 			RAISE NOTICE 'A operação selecionada foi: %', evento;
-- 			soma := num1 + num2;
-- 			RAISE NOTICE 'O resultado da soma entre % e % foi: %', num1, num2, soma;
-- 		WHEN evento = 2 THEN
-- 			RAISE NOTICE 'A operação selecionada foi: %', evento;
-- 			subtracao := num1 - num2;
-- 			RAISE NOTICE 'O resultado da subtração entre % e % foi: %', num1, num2, subtracao;
-- 		WHEN evento = 3 THEN
-- 			RAISE NOTICE 'A operação selecionada foi: %', evento;
-- 			multiplicacao := num1 * num2;
-- 			RAISE NOTICE 'O resultado da multiplicação entre % e % foi: %', num1, num2, multiplicacao;
-- 		WHEN evento = 4 THEN
-- 			RAISE NOTICE 'A operação selecionada foi: %', evento;
-- 			divisao := num1 / num2;
-- 			RAISE NOTICE 'O resultado da divisão entre % e % foi: %', num1, num2, divisao;		
-- 		ELSE
-- 			RAISE NOTICE 'ERRO...Tente novamente...';
-- 	END CASE;
-- END;
-- $$

-- Ex 03 com IF
-- DO $$
-- DECLARE
-- 	num1 INT := valor_aleatorio_entre(1,100);
-- 	num2 INT := valor_aleatorio_entre(1,100);
-- 	evento INT := valor_aleatorio_entre(1,4);
-- 	soma INT;
-- 	subtracao INT;
-- 	multiplicacao INT;
-- 	divisao NUMERIC(5,2);
-- BEGIN
-- 	RAISE NOTICE '1- SOMA / 2- SUBTRACAO / 3- MULTIPLICACAO / 4- DIVISAO';
-- 	IF evento = 1 THEN
-- 		RAISE NOTICE 'A operação selecionada foi: %', evento;
-- 		soma := num1 + num2;
-- 		RAISE NOTICE 'O resultado da soma entre % e % foi: %', num1, num2, soma;
-- 	ELSIF evento = 2 THEN
-- 		RAISE NOTICE 'A operação selecionada foi: %', evento;
-- 		subtracao := num1 - num2;
-- 		RAISE NOTICE 'O resultado da subtração entre % e % foi: %', num1, num2, subtracao;
-- 	ELSIF evento = 3 THEN
-- 		RAISE NOTICE 'A operação selecionada foi: %', evento;
-- 		multiplicacao := num1 * num2;
-- 		RAISE NOTICE 'O resultado da multiplicação entre % e % foi: %', num1, num2, multiplicacao;
-- 	ELSIF evento = 4 THEN
-- 		RAISE NOTICE 'A operação selecionada foi: %', evento;
-- 		divisao := num1 / num2;
-- 		RAISE NOTICE 'O resultado da divisão entre % e % foi: %', num1, num2, divisao;
-- 	ELSE
-- 		RAISE NOTICE 'ERRO...Tente novamente...';
-- 	END IF;
-- END;
-- $$

-- Ex 02 com CASE
-- DO $$
-- DECLARE
-- 	num INT := valor_aleatorio_entre(1,100);
-- BEGIN 
-- 	RAISE NOTICE 'O número gerado é %', num;
-- 	CASE
-- 		WHEN num % 3 = 0 THEN
-- 			RAISE NOTICE 'O número % é um multiplo de 3', num;
-- 		WHEN num % 5 = 0 THEN
-- 			RAISE NOTICE 'O número % é um multiplo de 5', num;
-- 		ELSE
-- 			RAISE NOTICE 'O número % não é um multiplo nem de 3 nem de 5', num;
-- 	END CASE;
-- END;
-- $$

-- Ex 02 com IF
-- DO $$ 
-- DECLARE
-- 	num INT := valor_aleatorio_entre(1,100);
-- BEGIN
-- 	RAISE NOTICE 'O número gerado é: %', num;
-- 	IF num % 3 = 0 THEN
-- 		RAISE NOTICE 'O número % é um multiplo de 3', num;
-- 	ELSIF num % 5 = 0 THEN
-- 		RAISE NOTICE 'O número % é um multiplo de 5', num;
-- 	ELSE
-- 		RAISE NOTICE 'O número % não é um multiplo nem de 3 nem de 5', num;
-- 	END IF;
-- END;
-- $$

-- Ex 01 com CASE
-- DO $$
-- DECLARE
-- 	num INT := valor_aleatorio_entre(1,100);
-- BEGIN
-- 	RAISE NOTICE 'O número gerado é: %', num;
-- 	CASE 
-- 		WHEN num % 3 = 0 THEN  
-- 			RAISE NOTICE 'O número % é um multiplo de 3', num;
-- 		ELSE 
-- 			RAISE NOTICE 'O número % não é um multiplo de 3', num;
-- 	END CASE;
-- END;
-- $$
	
-- Ex 01 com IF
-- DO $$
-- DECLARE
-- 	num INT := valor_aleatorio_entre(1,100);
-- BEGIN
-- 	RAISE NOTICE 'O número gerado é: %', num;
-- 	IF num % 3 = 0 THEN
-- 		RAISE NOTICE 'O valor % é um multiplo de 3', num;
-- 	ELSE
-- 		RAISE NOTICE 'O valor % não é um multiplo de 3', num;
-- 	END IF;
-- END;
-- $$

-- CREATE OR REPLACE FUNCTION valor_aleatorio_entre(lim_inferior INT, lim_superior INT) RETURNS INT AS
-- $$
-- BEGIN 
-- 	RETURN FLOOR(random() * (lim_superior - lim_inferior + 1) + lim_inferior)::INT;
-- END
-- $$ LANGUAGE plpgsql;

-- SELECT valor_aleatorio_entre(2,10);
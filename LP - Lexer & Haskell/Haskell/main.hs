data Product = Product {name::String , price::Int} deriving Show

add :: Product -> [Product] -> [Product]
add item items = item : items

main = do   
    addProduct []
    putStr "\ESC[2J"
    putStr "Encerrando...\n"

addProduct :: [Product] -> IO()
addProduct myData = do
    putStr "\ESC[2J"
    putStrLn "Menu Principal:" 
    putStrLn "---------------" 
    putStrLn "1 - Adicionar Produto" 
    putStrLn "2 - Listar Produtos" 
    putStrLn "0 - Sair" 
    option <- getLine 
    if option == "1" then do
      putStr "\ESC[2J"
      putStrLn "Digite o nome do produto:"
      line1 <- getLine
      putStrLn "Digite o preço do produto:"
      line2 <- getLine
      let prodName = line1
      let prodPrice = read line2::Int
      let myNewData = Product prodName prodPrice
      let newList = add myNewData myData
      addProduct newList
    else if option == "2" then do
      putStr "\ESC[2J"
      printElements myData
      putStrLn "\nAperte Enter para continuar..."
      line3 <- getLine
      addProduct myData
    else
      return ()

printElements :: [Product] -> IO()
printElements [] = return ()
printElements (x:xs) = do 
    formatData x
    printElements xs

formatData :: Product -> IO()
formatData d = do
    print("Produto: " ++ name d ++ ", Preco: R$" ++ show (price d)::String)
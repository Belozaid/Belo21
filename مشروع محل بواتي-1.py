class Shoe:
    def __init__(self, brand, size, color, price):
        self.brand = brand
        self.size = size
        self.color = color
        self.price = price
        
class Store:
    def __init__(self):
        self.inventory = []
        
    def add_shoe(self, shoe):
        self.inventory.append(shoe)
        
   
        
        
    def remove_shoe(self, brand=None, size=None, color=None, price=None):
        r = []
        for shoe in self.inventory:
            if (not brand or shoe.brand == brand) and \
               (not size or shoe.size == size) and \
               (not color or shoe.color == color) and \
               (not price or shoe.price == price):
                r.append(shoe)
        return r
 
        
    def search_shoes(self, brand=None, size=None, color=None, price=None):
        result = []
        for shoe in self.inventory:
            if (not brand or shoe.brand == brand) and \
               (not size or shoe.size == size) and \
               (not color or shoe.color == color) and \
               (not price or shoe.price == price):
                result.append(shoe)
        return result
 

def menu():
    store = Store()
    while True:
        print("1. Add shoe")
        print("2. Remove shoe")
        print("3. Search shoes")
        print("4. Exit")
        choice = input("Enter your choice: ")
        if choice == "1":
            brand = input("Enter brand: ")
            size = input("Enter size: ")
            color = input("Enter color: ")
            price = input("Enter price: ")
            shoe = Shoe(brand, size, color, price)
            store.add_shoe(shoe)
            
            print("Shoe added successfully")
        elif choice == "2":
            brand = input("Enter brand: ")
            size = input("Enter size: ")
            color = input("Enter color: ")
            price = input("Enter price: ")
            r=store.remove_shoe(brand, size, color, price)
            if r:
                for shoe in r:
                    print( "Shoe removed successfully")
            else:
                print("we cant")
        elif choice == "3":
            brand = input("Enter brand (or leave blank): ")
            size = input("Enter size (or leave blank): ")
            color = input("Enter color (or leave blank): ")
            price = input("Enter price (or leave blank): ")
            result = store.search_shoes(brand, size, color, price)
            if result:
                for shoe in result:
                    print(f"{shoe.brand} {shoe.size} {shoe.color} {shoe.price}")
            else:
                print("No matching shoes found")
        elif choice == "4":
            break
        else:
            print("Invalid choice")
 


if __name__ == "__main__":
     menu()
 

#Lägg till en användare som heter "kalle", och skapa en home-katalog åt denne
sudo useradd -m kalle

#Skapa lösenord åt användaren "kalle"
sudo passwd kalle

#Logga in som "kalle"
su kalle

#Nu kan du byta till kalles home-katalog och kolla runt
cd

#Kolla i /etc/sudoers vilken grupp som har rättigheter att köra som sudo
#Alltså vilken grupp som har 
visudo

#I visudo står det, ( i mitt fall ) "%wheel ALL=(ALL) ALL" Utan #-tecken före
#Betyder att alla användare i "wheel"-gruppen har sudo-rättigheter

#Kollar ännu att gruppen existerar
groups
#out: wheel oj

#Om gruppen inte existerar måste du välja en annan grupp, eller i värsta fall skapa gruppen
#men vi kan alltså använda wheel-gruppen

#Nu lägger vi till kalle som "adminanvändare" alltså han får alla rättigheter när han använder sudo
sudo usermod -G wheel kalle

#Då har vi en användare med adminrättigheter!

#Om vi vill lägga till en användare vars home-katalog ser ut på nåt visst sätt, kan vi ge stigen till en s.k. "skeleton"-katalog till useradd med hjälp av -k
sudo useradd -m -k /home/oj/skeleton_dir/ pelle 


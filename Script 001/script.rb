#######################################################################
##### Script Prof Bibiche
#### ID            : 001
#### But           : Faire un menu avec plein de features
#### Version       : RPG Maker VXAce
#### Participants  :
# Bibi : 
# - architecture du nouvel objet Scene_Menu
# Arx/Guiop12 :
# - Afficher Titre du jeu
#
#
#######################################################################
##### Début du Script
#######################################################################

####################################
# ** Scene_Menu
####################################
class Scene_Menu

  #---------------------------------
  # * Start
  #---------------------------------
  def start
    super
        super
create_title  #Commande "Afficher le titre du jeu"
end  
def create_title  #On va définir la commande "Afficher le titre du jeu"
@title = Window_Help.new(1) # Création de la fenetre pour afficher le titre du jeu
@title.set_text($data_system.game_title) # @title affiche le nom du jeu alias $data_system.game_title

end
  end
  
  #---------------------------------
  # * Terminate
  #---------------------------------
  def terminate
    super
    
  end    

  #---------------------------------
  # * Update
  #---------------------------------
  def update
    super
    
  end
end
#######################################################################
##### Fin du Script
#######################################################################

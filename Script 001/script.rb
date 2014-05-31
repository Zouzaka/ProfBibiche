#######################################################################
##### Script Prof Bibiche
#### ID            : 001
#### But           : Faire un menu avec plein de features
#### Version       : RPG Maker VXAce
#### Participants  :
# Bibi : 
# - architecture du nouvel objet Scene_Menu
# - architecture principale des touches B/C
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
    super # Héritage du start de Scene_Base
    create_title  # Commande "Afficher le titre du jeu"
  end  
  
  #---------------------------------
  # * Create Title
  # = Affichage du titre
  #---------------------------------
  def create_title  #On va définir la commande "Afficher le titre du jeu"
    @title = Window_Help.new(1) # Création de la fenêtre pour afficher le titre du jeu
    @title.set_text($data_system.game_title) # @title affiche le nom du jeu alias $data_system.game_title
  end

  #---------------------------------
  # * Terminate
  #---------------------------------
  def terminate
    super # Héritage du terminate de Scene_Base
  end    

  #---------------------------------
  # * Update
  #---------------------------------
  def update
    super # Héritage du update de Scene_Base
    update_input # Mise à jour des appuis de touches
  end
  
  #---------------------------------
  # * Update Input
  # = Mise à jour des appuis de touches
  #---------------------------------
  def update_input
    if Input.trigger?(:B) # Si la touche B (= Echap ou X) est pressée...
      update_input_b # ...alors on va réaliser ce qui se trouve dans la méthode update_input_b
    elsif Input.trigger?(:C) # Si la touche C (= Entrée) est pressée...
      update_input_c # ...alors on va réaliser ce qui se trouve dans la méthode update_input_c
    end
  end
  
  #---------------------------------
  # * Update Input B
  # = Methode qui se réalise si la touche B (= Echap ou X) est pressée
  #---------------------------------
  def update_input_b
    # Mettre ici ce qu'il se passe quand on appuie sur B (= Echap ou X)
  end
  
  #---------------------------------
  # * Update Input C
  # = Méthode qui se réalise si la touche C (= Entrée) est pressée
  #---------------------------------
  def update_input_c
    # Mettre ici ce qu'il se passe quand on appuie sur C (= Entrée)
  end
end
#######################################################################
##### Fin du Script
#######################################################################

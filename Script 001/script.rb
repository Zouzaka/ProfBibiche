#######################################################################
##### Script Prof Bibiche
#### ID : 001
#### But : Faire un menu avec plein de features
#### Version : RPG Maker VXAce
#### Participants :
# Bibi :
# - architecture du nouvel objet Scene_Menu
# - architecture principale des touches B/C
# Arx/Guiop12 :
# - Afficher Titre du jeu
# Zarby :
# - Affichage du temps de jeu
#
#
#######################################################################
##### Personnalisation du Script
#######################################################################
PicName = ["Nom1","Nom2","Nom3","Nom4","Nom5","Nom6","Nom7","Curseur"]
PicX = [50,100,150,200,250,300,350]
PicY = [50,100,150,200,250,300,350]

#######################################################################
##### Début du Script
#######################################################################

####################################
# ** Window_Temps
####################################
class Window_Temps < Window_Base
  #---------------------------------
  # * initialize
  #---------------------------------
  def initialize
    super(Graphics.width - 196, Graphics.height - 80,196,80) # Héritage de la fenêtre de base (x,y,width,height)
    refresh # Redessinne le temps pour qu'il affiche le bon
  end
  #---------------------------------
  # * Update
  #---------------------------------
  def update
    super
    refresh # Redessinne le temps pour qu'ils affiche le bon
  end
  #---------------------------------
  # * Refresh
  # = Mise a jours du texte/temps afficher dans la fenêtre
  #---------------------------------
  def refresh
    contents.clear # Nettoie le contenu de la fenêtre
    change_color(system_color) # Change la couleur du texte en couleur System
    # Dessine le texte "Temps de jeu total" sur la fenêtre
    draw_text(0, 0, 180, line_height, "Temps de jeu total : ")
    change_color(normal_color) # Change la couleur du texte en couleur Normal
    # Dessine le temps de jeu sur la fenêtre
    draw_text(0, 24, 80, line_height, $game_system.playtime_s)
  end
  
end

####################################
# ** Scene_Menu
####################################
class Scene_Menu

  #---------------------------------
  # * Start
  #---------------------------------
  def start
    super # Héritage du start de Scene_Base
    create_title # Commande "Afficher le titre du jeu"
    @windowTemps = Window_Temps.new #Cree la fenêtre d'affichage du temps
    creat_pictures
  end
  #---------------------------------
  # * Create Pictures
  # = Affichage Images
  #---------------------------------
  def creat_pictures
    @index_menu = 0
    7.times do |i|
      @item_viewport = Viewport.new(PicX[i], PicY[i], 50, 50)
      @item_sprits[i] = Sprite.new(@item_viewport)
      @item_sprits[i].bitmap = picture(PicName[i])
    end
    @curseur_viewport = Viewport.new(PicX[0], PicY[0], 50, 50)
    @curseur_sprit = Sprite.new(@curseur_viewport)
    @curseur_sprit.bitmap = picture(PicName[7])
  end

  #---------------------------------
  # * Create Title
  # = Affichage du titre
  #---------------------------------
  def create_title #On va définir la commande "Afficher le titre du jeu"
    @title = Window_Help.new(1) # Création de la fenêtre pour afficher le titre du jeu
    @title.set_text($data_system.game_title) # @title affiche le nom du jeu alias $data_system.game_title
  end

  #---------------------------------
  # * Terminate
  #---------------------------------
  def terminate
    super # Héritage du terminate de Scene_Base
    dispose_items
    SceneManager.return # Utilise la notion de Pile de scène
  end
  def dispose_items
    @item_sprits.each{|i| i.dispose }
    @curseur_sprit.dispose
  end

  #---------------------------------
  # * Update
  #---------------------------------
  def update
    super # Héritage du update de Scene_Base
    @windowTemps.update # Mise a jour du temps sur la fenêtre
    
    update_input # Mise à jour des appuis de touches
  end
  
  #---------------------------------
  # * Update Input
  # = Mise à jour des appuis de touches
  #---------------------------------
  def update_input
    # Nuki : Pourquoi cette gestion des touches?
    # Biwy : Juste au cas où on n'utiliserait pas les Window_Command ou autre. Pas d'utilité majeure en gros.
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
    terminate #On termine cette Scene
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

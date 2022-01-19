<?php 
    #$type_vetements= get_terms(['taxonomy'=> 'type_vetement']);
    if($term->slug=='homme'){

        $type_vetements = get_terms(['taxonomy'=>'type_vetment_homme']);
        $type_chaussures = get_terms(['taxonomy'=>'type_chaussure_homme']);

    }elseif($term->slug=='femme'){

        $type_vetements = get_terms(['taxonomy'=>'type_vetement_femme']);
        $type_chaussures = get_terms(['taxonomy'=>'type_chaussure_femme']);

    }elseif($term->slug=='enfant'){

        $type_vetements = get_terms(['taxonomy'=>'type_vetement_enfant']);
        $type_chaussures = get_terms(['taxonomy'=>'type_chaussure_enfant']);
    }

  
?>
<div class="navbard">

    <ul class="nav mx-auto mr-auto mt-2 mt-lg-0 justify-content-center">
        <div class="dropdown">

            <a class="nav-link active text-reset dropbtn" href="<?php echo get_post_type_archive_link('chaussure').'?genre='.$term->slug; ?>">Chaussures </a>
            <div class="dropdown-content">
                <?php foreach ($type_chaussures as $type_chaussure): ?>
                <a href="<?= get_term_link($type_chaussure) ?>"> <?= $type_chaussure->name ?></a>
                <?php endforeach;?>
            </div>
        </div>
        <div class="dropdown">

            <a class="nav-link active text-reset dropbtn" href="<?php echo get_post_type_archive_link('vetement').'?genre='.$term->slug; ?>">Vêtements </a>
            <div class="dropdown-content">
                <?php foreach ($type_vetements as $type_vetement): ?>
                    <a href="<?= get_term_link($type_vetement) ?>?sorte=bien"><?= $type_vetement->name ?></a>
                <?php endforeach;?>
            </div>
        </div>
        <div class="dropdown">

            <a class="nav-link active text-reset dropbtn" href="#">Sacs </a>
            <div class="dropdown-content">
                <a href="#">Link 1</a>
                <a href="#">Link 2</a>
                <a href="#">Link 3</a>
            </div>
        </div>
        <div class="dropdown">

            <a class="nav-link active text-reset dropbtn" href="#">Accessoires </a>
            <div class="dropdown-content">
                <a href="#">Link 1</a>
                <a href="#">Link 2</a>
                <a href="#">Link 3</a>
            </div>
        </div>
        <div class="dropdown">

            <a class="nav-link active text-reset dropbtn" href="#">Montres </a>
            <div class="dropdown-content">
                <a href="#">Link 1</a>
                <a href="#">Link 2</a>
                <a href="#">Link 3</a>
            </div>
        </div>
    </ul>
</div>
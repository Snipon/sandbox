<?php 
  // $variables is the variable to use
?>
<ul>
  <?php foreach($content as $key => $node): ?>
    <li>
      <?php
        dsm($variables);
        print render($node);
      ?>
    </li>
  <?php endforeach; ?>
</ul>
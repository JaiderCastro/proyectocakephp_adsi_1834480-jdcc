<!-- File: templates/Articles/index.php -->

<h1>Articles</h1>
<?= $this->Html->link('Add Article', ['action' => 'add']) ?>
<table>
    <tr>
        <th>Title</th>
        <th>Description</th>
    </tr>

    <!-- Here is where we iterate through our $articles query object, printing out article info -->

    <?php foreach ($articles as $article): ?>
    <tr>
        <td>
            <?= $this->Html->link($article->title, ['action' => 'view', $article->slug]) ?>
        </td>
        <td>
            <?= $article->body ?>

            
        </td>
        <td>
        <?= $this->Html->link('Edit', ['action' => 'edit', $article->slug]) ?>
            <?= $this->Form->postLink(
                'Delete',
                ['action' => 'delete', $article->slug],
                ['confirm' => 'Are you sure?'])
            ?>
        </td>
        
    </tr>
     
    <?php endforeach; ?>
</table>
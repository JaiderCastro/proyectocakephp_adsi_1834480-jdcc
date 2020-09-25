<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\User $user
 */
?>
<div class="row">
    <aside class="column">
        <div class="side-nav">
            <h4 class="heading"><?= __('Actions') ?></h4>
            <?= $this->Html->link(__('List Product'), ['action' => 'index'], ['class' => 'side-nav-item']) ?>
        </div>
    </aside>
    <div class="column-responsive column-80">
        <div class="users form content">
            <?= $this->Form->create($user) ?>
            <fieldset>
                <legend><?= __('Add Product') ?></legend>
                <?php
                    echo $this->Paginator->sort('
                    user email for entry:') ;
                    echo $this->Form->control('email');
                    echo $this->Paginator->sort('
                    user password for entry:') ;
                    echo $this->Form->control('password');
                    echo $this->Form->control('product');
                    echo $this->Form->control('maker');
                    echo $this->Form->control('price');
                    echo $this->Form->control('category');
                    echo $this->Form->control('description');
                ?>
            </fieldset>
            <?= $this->Form->button(__('Submit')) ?>
            <?= $this->Form->end() ?>
        </div>
    </div>
</div>

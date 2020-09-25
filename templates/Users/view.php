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
            <?= $this->Html->link(__('Edit Product'), ['action' => 'edit', $user->id], ['class' => 'side-nav-item']) ?>
            <?= $this->Html->link(__('List Product'), ['action' => 'index'], ['class' => 'side-nav-item']) ?>
            <?= $this->Html->link(__('New Product'), ['action' => 'add'], ['class' => 'side-nav-item']) ?>
        </div>
    </aside>
    <div class="column-responsive column-80">
        <div class="users view content">
            <h3><?= h($user->id) ?></h3>
            <table>
               
                <tr>
                    <th><?= __('Product') ?></th>
                    <td><?= h($user->product) ?></td>
                </tr>
                <tr>
                    <th><?= __('Maker') ?></th>
                    <td><?= h($user->maker) ?></td>
                </tr>
                <tr>
                    <th><?= __('Price') ?></th>
                    <td><?= h($user->price) ?></td>
                </tr>
                <tr>
                    <th><?= __('Category') ?></th>
                    <td><?= h($user->category) ?></td>
                </tr>
                <tr>
                    <th><?= __('Description') ?></th>
                    <td><?= h($user->description) ?></td>
                </tr>
                <tr>
                    <th><?= __('Id') ?></th>
                    <td><?= $this->Number->format($user->id) ?></td>
                </tr>
                <tr>
                   
            </table>
            
                </div>
                
            </div>
        </div>
    </div>
</div>

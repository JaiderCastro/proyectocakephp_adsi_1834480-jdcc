<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\User[]|\Cake\Collection\CollectionInterface $users
 */
?>
<div class="users index content">
    <?= $this->Html->link(__('New Product'), ['action' => 'add'], ['class' => 'button float-right']) ?>
    <h3><?= __('Products') ?></h3>
    <div class="table-responsive">
        <table>
            <thead>
                <tr>
                    <th><?= $this->Paginator->sort('id') ?></th>
                   
                    <th><?= $this->Paginator->sort('product') ?></th>
                    <th><?= $this->Paginator->sort('maker') ?></th>
                    <th><?= $this->Paginator->sort('price') ?></th>
                    <th><?= $this->Paginator->sort('category') ?></th>
                    <th><?= $this->Paginator->sort('description') ?></th>
                    <th class="actions"><?= __('Actions') ?></th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($users as $user): ?>
                <tr>
                    <td><?= $this->Number->format($user->id) ?></td>
                    
                    <td><?= h($user->product) ?></td>
                    <td><?= h($user->maker) ?></td>
                    <td><?= h($user->price) ?></td>
                    <td><?= h($user->category) ?></td>
                    <td><?= h($user->description) ?></td>
                    <td class="actions">
                        <?= $this->Html->link(__('View'), ['action' => 'view', $user->id]) ?>
                        <?= $this->Html->link(__('Edit'), ['action' => 'edit', $user->id]) ?>
                       
                    </td>
                </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
    </div>
    
</div>

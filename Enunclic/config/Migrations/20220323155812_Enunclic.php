<?php
declare(strict_types=1);

use Migrations\AbstractMigration;

class Enunclic extends AbstractMigration
{
    /**
     * Up Method.
     *
     * More information on this method is available here:
     * https://book.cakephp.org/phinx/0/en/migrations.html#the-up-method
     * @return void
     */
    public function up()
    {
        $this->table('adstable', ['id' => false, 'primary_key' => ['ads_id']])
            ->addColumn('ads_id', 'integer', [
                'default' => null,
                'limit' => 10,
                'null' => false,
            ])
            ->addColumn('ads_names', 'string', [
                'default' => null,
                'limit' => null,
                'null' => true,
            ])
            ->addColumn('ads_descriptions', 'text', [
                'default' => null,
                'limit' => null,
                'null' => true,
            ])
            ->addColumn('ads_start_dates', 'date', [
                'default' => null,
                'limit' => null,
                'null' => true,
            ])
            ->addColumn('ads_end_dates', 'date', [
                'default' => null,
                'limit' => null,
                'null' => true,
            ])
            ->create();

        $this->table('costumerstable', ['id' => false, 'primary_key' => ['costumer_id']])
            ->addColumn('costumer_id', 'integer', [
                'default' => null,
                'limit' => 10,
                'null' => false,
            ])
            ->addColumn('costumer_names', 'string', [
                'default' => null,
                'limit' => null,
                'null' => true,
            ])
            ->addColumn('costumer_addresses', 'string', [
                'default' => null,
                'limit' => null,
                'null' => true,
            ])
            ->addColumn('costumer_gps', 'text', [
                'default' => null,
                'limit' => null,
                'null' => true,
            ])
            ->addColumn('costumer_phones', 'integer', [
                'default' => null,
                'limit' => 10,
                'null' => true,
            ])
            ->create();

        $this->table('costumerstable_adstable', ['id' => false])
            ->addColumn('costumerstable_costumer_id', 'integer', [
                'default' => null,
                'limit' => 10,
                'null' => false,
            ])
            ->addColumn('adstable_ads_id', 'integer', [
                'default' => null,
                'limit' => 10,
                'null' => false,
            ])
            ->addIndex(
                [
                    'adstable_ads_id',
                ]
            )
            ->addIndex(
                [
                    'costumerstable_costumer_id',
                ]
            )
            ->create();

        $this->table('dailyregisterstable', ['id' => false, 'primary_key' => ['register_id']])
            ->addColumn('register_id', 'integer', [
                'default' => null,
                'limit' => 10,
                'null' => false,
            ])
            ->addColumn('register_status', 'string', [
                'default' => null,
                'limit' => null,
                'null' => true,
            ])
            ->addColumn('daily_initial_cashes', 'integer', [
                'default' => null,
                'limit' => 10,
                'null' => true,
            ])
            ->addColumn('daily_final_cashes', 'integer', [
                'default' => null,
                'limit' => 10,
                'null' => true,
            ])
            ->addColumn('register_dates', 'date', [
                'default' => null,
                'limit' => null,
                'null' => true,
            ])
            ->create();

        $this->table('deliveriestable', ['id' => false, 'primary_key' => ['delivery_man_id']])
            ->addColumn('delivery_man_id', 'integer', [
                'default' => null,
                'limit' => 10,
                'null' => false,
            ])
            ->addColumn('delivery_man_names', 'string', [
                'default' => null,
                'limit' => null,
                'null' => true,
            ])
            ->addColumn('delivery_man_schedules', 'text', [
                'default' => null,
                'limit' => null,
                'null' => true,
            ])
            ->addColumn('delivery_man_days', 'text', [
                'default' => null,
                'limit' => null,
                'null' => true,
            ])
            ->create();

        $this->table('logisticstable', ['id' => false, 'primary_key' => ['logistics_id']])
            ->addColumn('logistics_id', 'integer', [
                'default' => null,
                'limit' => 10,
                'null' => false,
            ])
            ->create();

        $this->table('logisticstable_deliveriestable', ['id' => false])
            ->addColumn('logisticstable_logistics_id', 'integer', [
                'default' => null,
                'limit' => 10,
                'null' => false,
            ])
            ->addColumn('deliveriestable_delivery_man_id', 'integer', [
                'default' => null,
                'limit' => 10,
                'null' => false,
            ])
            ->addIndex(
                [
                    'deliveriestable_delivery_man_id',
                ]
            )
            ->addIndex(
                [
                    'logisticstable_logistics_id',
                ]
            )
            ->create();

        $this->table('offerstable', ['id' => false, 'primary_key' => ['offers_id']])
            ->addColumn('offers_id', 'integer', [
                'default' => null,
                'limit' => 10,
                'null' => false,
            ])
            ->addColumn('offer_names', 'string', [
                'default' => null,
                'limit' => null,
                'null' => true,
            ])
            ->addColumn('offer_descriptions', 'text', [
                'default' => null,
                'limit' => null,
                'null' => true,
            ])
            ->addColumn('offer_start_dates', 'date', [
                'default' => null,
                'limit' => null,
                'null' => true,
            ])
            ->addColumn('offer_final_dates', 'date', [
                'default' => null,
                'limit' => null,
                'null' => true,
            ])
            ->addColumn('offer_prices', 'integer', [
                'default' => null,
                'limit' => 10,
                'null' => true,
            ])
            ->create();

        $this->table('orderstable', ['id' => false, 'primary_key' => ['orders_id']])
            ->addColumn('orders_id', 'integer', [
                'default' => null,
                'limit' => 10,
                'null' => false,
            ])
            ->addColumn('order_addresses', 'string', [
                'default' => null,
                'limit' => null,
                'null' => true,
            ])
            ->addColumn('refernces', 'string', [
                'default' => null,
                'limit' => null,
                'null' => true,
            ])
            ->addColumn('dates', 'date', [
                'default' => null,
                'limit' => null,
                'null' => true,
            ])
            ->addColumn('times', 'time', [
                'default' => null,
                'limit' => null,
                'null' => true,
            ])
            ->addColumn('fees', 'integer', [
                'default' => null,
                'limit' => 10,
                'null' => true,
            ])
            ->addColumn('status', 'string', [
                'default' => null,
                'limit' => null,
                'null' => true,
            ])
            ->addColumn('orders_gps', 'text', [
                'default' => null,
                'limit' => null,
                'null' => true,
            ])
            ->create();

        $this->table('orderstable_logisticstable', ['id' => false])
            ->addColumn('orderstable_orders_id', 'integer', [
                'default' => null,
                'limit' => 10,
                'null' => false,
            ])
            ->addColumn('logisticstable_logistics_id', 'integer', [
                'default' => null,
                'limit' => 10,
                'null' => false,
            ])
            ->addIndex(
                [
                    'logisticstable_logistics_id',
                ]
            )
            ->addIndex(
                [
                    'orderstable_orders_id',
                ]
            )
            ->create();

        $this->table('paymentstable', ['id' => false, 'primary_key' => ['payment_id']])
            ->addColumn('payment_id', 'integer', [
                'default' => null,
                'limit' => 10,
                'null' => false,
            ])
            ->addColumn('payment_methods', 'string', [
                'default' => null,
                'limit' => null,
                'null' => true,
            ])
            ->addColumn('payment_receipts', 'text', [
                'default' => null,
                'limit' => null,
                'null' => true,
            ])
            ->create();

        $this->table('preferencetables', ['id' => false, 'primary_key' => ['preferents_id']])
            ->addColumn('preferents_id', 'integer', [
                'default' => null,
                'limit' => 10,
                'null' => false,
            ])
            ->addColumn('preferent_descriptions', 'text', [
                'default' => null,
                'limit' => null,
                'null' => true,
            ])
            ->addColumn('preferent_fees', 'integer', [
                'default' => null,
                'limit' => 10,
                'null' => true,
            ])
            ->create();

        $this->table('productstable', ['id' => false, 'primary_key' => ['order_id']])
            ->addColumn('order_id', 'integer', [
                'default' => null,
                'limit' => 10,
                'null' => false,
            ])
            ->addColumn('order_quantities', 'integer', [
                'default' => null,
                'limit' => 10,
                'null' => true,
            ])
            ->addColumn('order_descriptions', 'text', [
                'default' => null,
                'limit' => null,
                'null' => true,
            ])
            ->addColumn('order_prices', 'integer', [
                'default' => null,
                'limit' => 10,
                'null' => true,
            ])
            ->create();

        $this->table('rolestable', ['id' => false, 'primary_key' => ['roles_id']])
            ->addColumn('roles_id', 'integer', [
                'default' => null,
                'limit' => 10,
                'null' => false,
            ])
            ->addColumn('roles', 'string', [
                'default' => null,
                'limit' => null,
                'null' => true,
            ])
            ->create();

        $this->table('supplierstable', ['id' => false, 'primary_key' => ['supplier_id']])
            ->addColumn('supplier_id', 'integer', [
                'default' => null,
                'limit' => 10,
                'null' => false,
            ])
            ->addColumn('supplier_names', 'string', [
                'default' => null,
                'limit' => null,
                'null' => true,
            ])
            ->addColumn('supplier_addresses', 'string', [
                'default' => null,
                'limit' => null,
                'null' => true,
            ])
            ->addColumn('supplier_phones', 'integer', [
                'default' => null,
                'limit' => 10,
                'null' => true,
            ])
            ->create();

        $this->table('userstable', ['id' => false, 'primary_key' => ['users_id']])
            ->addColumn('users_id', 'integer', [
                'default' => null,
                'limit' => 10,
                'null' => false,
            ])
            ->addColumn('users', 'string', [
                'default' => null,
                'limit' => null,
                'null' => true,
            ])
            ->addColumn('passwords', 'string', [
                'default' => null,
                'limit' => null,
                'null' => true,
            ])
            ->create();

        $this->table('userstable_rolestable', ['id' => false])
            ->addColumn('userstable_users_id', 'integer', [
                'default' => null,
                'limit' => 10,
                'null' => false,
            ])
            ->addColumn('rolestable_roles_id', 'integer', [
                'default' => null,
                'limit' => 10,
                'null' => false,
            ])
            ->addIndex(
                [
                    'rolestable_roles_id',
                ]
            )
            ->addIndex(
                [
                    'userstable_users_id',
                ]
            )
            ->create();

        $this->table('zonestable', ['id' => false, 'primary_key' => ['zones_id']])
            ->addColumn('zones_id', 'integer', [
                'default' => null,
                'limit' => 10,
                'null' => false,
            ])
            ->addColumn('initial_zones', 'text', [
                'default' => null,
                'limit' => null,
                'null' => true,
            ])
            ->addColumn('final_zones', 'text', [
                'default' => null,
                'limit' => null,
                'null' => true,
            ])
            ->addColumn('descriptions', 'text', [
                'default' => null,
                'limit' => null,
                'null' => true,
            ])
            ->create();

        $this->table('zonestable_logisticstable', ['id' => false])
            ->addColumn('zonestable_zones_id', 'integer', [
                'default' => null,
                'limit' => 10,
                'null' => false,
            ])
            ->addColumn('logisticstable_logistics_id', 'integer', [
                'default' => null,
                'limit' => 10,
                'null' => false,
            ])
            ->addIndex(
                [
                    'logisticstable_logistics_id',
                ]
            )
            ->addIndex(
                [
                    'zonestable_zones_id',
                ]
            )
            ->create();

        $this->table('costumerstable')
            ->addForeignKey(
                'costumer_id',
                'orderstable',
                'orders_id',
                [
                    'update' => 'NO_ACTION',
                    'delete' => 'NO_ACTION',
                ]
            )
            ->addForeignKey(
                'costumer_id',
                'paymentstable',
                'payment_id',
                [
                    'update' => 'NO_ACTION',
                    'delete' => 'NO_ACTION',
                ]
            )
            ->update();

        $this->table('costumerstable_adstable')
            ->addForeignKey(
                'adstable_ads_id',
                'adstable',
                'ads_id',
                [
                    'update' => 'NO_ACTION',
                    'delete' => 'NO_ACTION',
                ]
            )
            ->addForeignKey(
                'costumerstable_costumer_id',
                'costumerstable',
                'costumer_id',
                [
                    'update' => 'NO_ACTION',
                    'delete' => 'NO_ACTION',
                ]
            )
            ->update();

        $this->table('dailyregisterstable')
            ->addForeignKey(
                'register_id',
                'deliveriestable',
                'delivery_man_id',
                [
                    'update' => 'NO_ACTION',
                    'delete' => 'NO_ACTION',
                ]
            )
            ->update();

        $this->table('logisticstable_deliveriestable')
            ->addForeignKey(
                'deliveriestable_delivery_man_id',
                'deliveriestable',
                'delivery_man_id',
                [
                    'update' => 'NO_ACTION',
                    'delete' => 'NO_ACTION',
                ]
            )
            ->addForeignKey(
                'logisticstable_logistics_id',
                'logisticstable',
                'logistics_id',
                [
                    'update' => 'NO_ACTION',
                    'delete' => 'NO_ACTION',
                ]
            )
            ->update();

        $this->table('orderstable_logisticstable')
            ->addForeignKey(
                'logisticstable_logistics_id',
                'logisticstable',
                'logistics_id',
                [
                    'update' => 'NO_ACTION',
                    'delete' => 'NO_ACTION',
                ]
            )
            ->addForeignKey(
                'orderstable_orders_id',
                'orderstable',
                'orders_id',
                [
                    'update' => 'NO_ACTION',
                    'delete' => 'NO_ACTION',
                ]
            )
            ->update();

        $this->table('preferencetables')
            ->addForeignKey(
                'preferents_id',
                'costumerstable',
                'costumer_id',
                [
                    'update' => 'NO_ACTION',
                    'delete' => 'NO_ACTION',
                ]
            )
            ->update();

        $this->table('productstable')
            ->addForeignKey(
                'order_id',
                'offerstable',
                'offers_id',
                [
                    'update' => 'NO_ACTION',
                    'delete' => 'NO_ACTION',
                ]
            )
            ->addForeignKey(
                'order_id',
                'supplierstable',
                'supplier_id',
                [
                    'update' => 'NO_ACTION',
                    'delete' => 'NO_ACTION',
                ]
            )
            ->addForeignKey(
                'order_id',
                'orderstable',
                'orders_id',
                [
                    'update' => 'NO_ACTION',
                    'delete' => 'NO_ACTION',
                ]
            )
            ->update();

        $this->table('userstable')
            ->addForeignKey(
                'users_id',
                'deliveriestable',
                'delivery_man_id',
                [
                    'update' => 'NO_ACTION',
                    'delete' => 'NO_ACTION',
                ]
            )
            ->update();

        $this->table('userstable_rolestable')
            ->addForeignKey(
                'rolestable_roles_id',
                'rolestable',
                'roles_id',
                [
                    'update' => 'NO_ACTION',
                    'delete' => 'NO_ACTION',
                ]
            )
            ->addForeignKey(
                'userstable_users_id',
                'userstable',
                'users_id',
                [
                    'update' => 'NO_ACTION',
                    'delete' => 'NO_ACTION',
                ]
            )
            ->update();

        $this->table('zonestable_logisticstable')
            ->addForeignKey(
                'logisticstable_logistics_id',
                'logisticstable',
                'logistics_id',
                [
                    'update' => 'NO_ACTION',
                    'delete' => 'NO_ACTION',
                ]
            )
            ->addForeignKey(
                'zonestable_zones_id',
                'zonestable',
                'zones_id',
                [
                    'update' => 'NO_ACTION',
                    'delete' => 'NO_ACTION',
                ]
            )
            ->update();
    }

    /**
     * Down Method.
     *
     * More information on this method is available here:
     * https://book.cakephp.org/phinx/0/en/migrations.html#the-down-method
     * @return void
     */
    public function down()
    {
        $this->table('costumerstable')
            ->dropForeignKey(
                'costumer_id'
            )
            ->dropForeignKey(
                'costumer_id'
            )->save();

        $this->table('costumerstable_adstable')
            ->dropForeignKey(
                'adstable_ads_id'
            )
            ->dropForeignKey(
                'costumerstable_costumer_id'
            )->save();

        $this->table('dailyregisterstable')
            ->dropForeignKey(
                'register_id'
            )->save();

        $this->table('logisticstable_deliveriestable')
            ->dropForeignKey(
                'deliveriestable_delivery_man_id'
            )
            ->dropForeignKey(
                'logisticstable_logistics_id'
            )->save();

        $this->table('orderstable_logisticstable')
            ->dropForeignKey(
                'logisticstable_logistics_id'
            )
            ->dropForeignKey(
                'orderstable_orders_id'
            )->save();

        $this->table('preferencetables')
            ->dropForeignKey(
                'preferents_id'
            )->save();

        $this->table('productstable')
            ->dropForeignKey(
                'order_id'
            )
            ->dropForeignKey(
                'order_id'
            )
            ->dropForeignKey(
                'order_id'
            )->save();

        $this->table('userstable')
            ->dropForeignKey(
                'users_id'
            )->save();

        $this->table('userstable_rolestable')
            ->dropForeignKey(
                'rolestable_roles_id'
            )
            ->dropForeignKey(
                'userstable_users_id'
            )->save();

        $this->table('zonestable_logisticstable')
            ->dropForeignKey(
                'logisticstable_logistics_id'
            )
            ->dropForeignKey(
                'zonestable_zones_id'
            )->save();

        $this->table('adstable')->drop()->save();
        $this->table('costumerstable')->drop()->save();
        $this->table('costumerstable_adstable')->drop()->save();
        $this->table('dailyregisterstable')->drop()->save();
        $this->table('deliveriestable')->drop()->save();
        $this->table('logisticstable')->drop()->save();
        $this->table('logisticstable_deliveriestable')->drop()->save();
        $this->table('offerstable')->drop()->save();
        $this->table('orderstable')->drop()->save();
        $this->table('orderstable_logisticstable')->drop()->save();
        $this->table('paymentstable')->drop()->save();
        $this->table('preferencetables')->drop()->save();
        $this->table('productstable')->drop()->save();
        $this->table('rolestable')->drop()->save();
        $this->table('supplierstable')->drop()->save();
        $this->table('userstable')->drop()->save();
        $this->table('userstable_rolestable')->drop()->save();
        $this->table('zonestable')->drop()->save();
        $this->table('zonestable_logisticstable')->drop()->save();
    }
}

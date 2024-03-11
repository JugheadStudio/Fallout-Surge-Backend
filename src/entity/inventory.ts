import { Column, Entity, PrimaryGeneratedColumn } from "typeorm";

@Entity()
export class Inventory {
    @PrimaryGeneratedColumn()
    inventory_id!: number

    @Column()
    settlementID!: number

    @Column()
    amount!: number

    @Column()
    capacity_used!: number

}


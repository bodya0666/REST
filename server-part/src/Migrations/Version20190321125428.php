<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20190321125428 extends AbstractMigration
{
    public function getDescription() : string
    {
        return '';
    }

    public function up(Schema $schema) : void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('ALTER TABLE requests ADD operation_id INT NOT NULL');
        $this->addSql('ALTER TABLE requests ADD CONSTRAINT FK_7B85D65144AC3583 FOREIGN KEY (operation_id) REFERENCES operation (id)');
        $this->addSql('CREATE INDEX IDX_7B85D65144AC3583 ON requests (operation_id)');
    }

    public function down(Schema $schema) : void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('ALTER TABLE requests DROP FOREIGN KEY FK_7B85D65144AC3583');
        $this->addSql('DROP INDEX IDX_7B85D65144AC3583 ON requests');
        $this->addSql('ALTER TABLE requests DROP operation_id');
    }
}

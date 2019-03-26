<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass="App\Repository\SubscriptionsRepository")
 */
class Subscriptions
{
    /**
     * @ORM\Id()
     * @ORM\GeneratedValue()
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\ManyToOne(targetEntity="App\Entity\Services")
     * @ORM\JoinColumn(nullable=false)
     */
    private $services;

    /**
     * @ORM\Column(type="integer", unique=true)
     */
    private $user_id;

    /**
     * @ORM\Column(type="integer")
     */
    private $date_start;

    /**
     * @ORM\Column(type="integer", nullable=true)
     */
    private $date_end;

    /**
     * @ORM\Column(type="boolean")
     */
    private $status;

    /**
     * @ORM\Column(type="float")
     */
    private $billing;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getServices(): ?Services
    {
        return $this->services;
    }

    public function setServices(?Services $services): self
    {
        $this->services = $services;

        return $this;
    }

    public function getUserId(): ?int
    {
        return $this->user_id;
    }

    public function setUserId(int $user_id): self
    {
        $this->user_id = $user_id;

        return $this;
    }

    public function getDateStart(): ?int
    {
        return $this->date_start;
    }

    public function setDateStart(int $date_start): self
    {
        $this->date_start = $date_start;

        return $this;
    }

    public function getDateEnd(): ?int
    {
        return $this->date_end;
    }

    public function setDateEnd(int $date_end): self
    {
        $this->date_end = $date_end;

        return $this;
    }

    public function getStatus(): ?bool
    {
        return $this->status;
    }

    public function setStatus(bool $status): self
    {
        $this->status = $status;

        return $this;
    }

    public function getBilling(): ?float
    {
        return $this->billing;
    }

    public function setBilling(float $billing): self
    {
        $this->billing = $billing;

        return $this;
    }
}

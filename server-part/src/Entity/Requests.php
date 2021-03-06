<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass="App\Repository\RequestsRepository")
 */
class Requests
{
    /**
     * @ORM\Id()
     * @ORM\GeneratedValue()
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="integer")
     */
    private $timestamp;

    /**
     * @ORM\Column(type="text")
     */
    private $request;

    /**
     * @ORM\Column(type="text")
     */
    private $response;

    /**
     * @ORM\Column(type="integer")
     */
    private $httpStatus;

    /**
     * @ORM\Column(type="float")
     */
    private $execTime;

    /**
     * @ORM\ManyToOne(targetEntity="App\Entity\Operation")
     * @ORM\JoinColumn(nullable=false)
     */
    private $operation;

    /**
     * @ORM\ManyToOne(targetEntity="App\Entity\Subscriptions")
     */
    private $subscriptions;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getTimestamp(): ?int
    {
        return $this->timestamp;
    }

    public function setTimestamp(int $timestamp): self
    {
        $this->timestamp = $timestamp;

        return $this;
    }

    public function getRequest(): ?string
    {
        return $this->request;
    }

    public function setRequest(string $request): self
    {
        $this->request = $request;

        return $this;
    }

    public function getResponse(): ?string
    {
        return $this->response;
    }

    public function setResponse(string $response): self
    {
        $this->response = $response;

        return $this;
    }

    public function getHttpStatus(): ?int
    {
        return $this->httpStatus;
    }

    public function setHttpStatus(int $httpStatus): self
    {
        $this->httpStatus = $httpStatus;

        return $this;
    }

    public function getExecTime(): ?float
    {
        return $this->execTime;
    }

    public function setExecTime(float $execTime): self
    {
        $this->execTime = $execTime;

        return $this;
    }

    public function getOperation(): ?Operation
    {
        return $this->operation;
    }

    public function setOperation(?Operation $operation): self
    {
        $this->operation = $operation;

        return $this;
    }

    public function getSubscriptions(): ?Subscriptions
    {
        return $this->subscriptions;
    }

    public function setSubscriptions(?Subscriptions $subscriptions): self
    {
        $this->subscriptions = $subscriptions;

        return $this;
    }
}

package com.piggymetrics.account.domain;

import com.fasterxml.jackson.annotation.JsonIgnore;

import java.math.BigDecimal;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.MapsId;
import javax.persistence.OneToOne;
import javax.validation.constraints.NotNull;

@Entity
public class Saving {
  @Id
  @JsonIgnore
  private String name;

  @OneToOne(fetch = FetchType.LAZY)
  @MapsId
  @JsonIgnore
  private Account account;

  @NotNull
  private BigDecimal amount;

  @NotNull
  private Currency currency;

  @NotNull
  private BigDecimal interest;

  @NotNull
  private Boolean deposit;

  @NotNull
  private Boolean capitalization;

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public Account getAccount() {
    return account;
  }

  public void setAccount(Account account) {
    this.account = account;
  }

  public BigDecimal getAmount() {
    return amount;
  }

  public void setAmount(BigDecimal amount) {
    this.amount = amount;
  }

  public Currency getCurrency() {
    return currency;
  }

  public void setCurrency(Currency currency) {
    this.currency = currency;
  }

  public BigDecimal getInterest() {
    return interest;
  }

  public void setInterest(BigDecimal interest) {
    this.interest = interest;
  }

  public Boolean getDeposit() {
    return deposit;
  }

  public void setDeposit(Boolean deposit) {
    this.deposit = deposit;
  }

  public Boolean getCapitalization() {
    return capitalization;
  }

  public void setCapitalization(Boolean capitalization) {
    this.capitalization = capitalization;
  }
}

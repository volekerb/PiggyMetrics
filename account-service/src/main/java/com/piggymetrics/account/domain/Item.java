package com.piggymetrics.account.domain;

import com.fasterxml.jackson.annotation.JsonIgnore;

import org.hibernate.validator.constraints.Length;

import java.math.BigDecimal;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.validation.constraints.NotNull;

@Entity
public class Item {
  @Id
  @GeneratedValue
  @JsonIgnore
  private String id;

  @NotNull
  @Length(min = 1, max = 20)
  private String title;

  @NotNull
  private BigDecimal amount;

  @NotNull
  private Currency currency;

  @NotNull
  private TimePeriod period;

  @NotNull
  private String icon;

  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

  public String getTitle() {
    return title;
  }

  public void setTitle(String title) {
    this.title = title;
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

  public TimePeriod getPeriod() {
    return period;
  }

  public void setPeriod(TimePeriod period) {
    this.period = period;
  }

  public String getIcon() {
    return icon;
  }

  public void setIcon(String icon) {
    this.icon = icon;
  }
}
